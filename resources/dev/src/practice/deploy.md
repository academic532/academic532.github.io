网站部署
===========

## Github Pages 服务

部署网页内容，原始的方法是使用一台连接到 ISP 的主机上的 Web 服务器来托管网页内容，但这样对网页的持续集成开发增加了复杂性。

[Github Pages](https://pages.github.com/) 提供了静态网站托管服务，选择使用 Github Pages 服务托管实验室网站，因为其可以和 Github 提供的代码托管和 Travis CI 更好地衔接，从而减小更新网站内容的难度，参考 [管理哲学](https://ning.sjtu.edu.cn/resources/dev/basic/git-vcs.html#管理哲学) 一节。另外，这是一种节省服务器成本的方法。

Github Pages 需要创建一个名称为 `[name].github.io` 的仓库，其中 `[name]` 为 Github 账户名字。

## 域名申请

[SJTU 二级域名申请指南](http://net.sjtu.edu.cn/wlfw/wlfwlist.jsp?urltype=tree.TreeTempUrl&wbtreeid=1038)

申请过程备案需要出示可访问的校内 IP 地址上托管的网页，可使用 `jekyll serve` 或 `python3 -m http.server` 先应付学校网络中心的备案审查。申请成功后获得二级域名`[name].sjtu.edu.cn`。

## Nginx 反向代理

本节最关键的一步，即如何将申请得到的二级域名与 Github Pages 服务关联起来。[Nginx](http://nginx.org/) 的反向代理功能是解决此问题较优雅的方案。

在申请时 IP 对应的主机上使用 Nginx 反向代理，使用 Github Pages 提供的网页内容响应 `[name].sjtu.edu.cn` 的请求，主机 Linux 发行版为 ArchLinux，以本网站域名 `ning.sjtu.edu.cn` 为例，配置过程如下：

### 安装 Nginx

安装稳定版的 Nginx

```bash
$ sudo pacman -Sy nginx
```

使用 systemd 开启 `nginx.service`

```bash
$ sudo systemctl enable nginx.service
$ sudo systemctl start nginx.service
```

此时 Nginx 默认将 `/usr/share/nginx/html` 中的内容作为网页内容。

### 配置 SSL/TLS 证书

HTTPS 协议使用 SSL/TLS 协议保证通信安全，防止窃听、篡改、冒充网站服务。

[Let's Encrypt](https://certbot.eff.org/#arch-nginx) 提供了免费获取 SSL/TLS 证书的服务，其提供的 `certbot` 程序用于生成证书。

首先安装 `certbot-nginx`

```bash
$ sudo pacman -Sy certbot-nginx
```

然后在命令行输入

```bash
sudo certbot certonly --nginx -w /usr/share/nginx/html/ -d ning.sjtu.edu.cn
```

按照提示生成证书，证书位于 `/etc/letsencrypt/live/ning.sjtu.edu.cn/`。

注意 Let's Encrypt 的证书有效期为 90 天，注意及时使用 `sudo certbot renew` 自动更新本地证书。

### 配置 Nginx

Nginx 的配置文件为 `/etc/nginx/nginx.conf`，修改其内容如下：

```
worker_processes  1;
events {
    worker_connections  1024;
}

http {
    include       mime.types;
    default_type  application/octet-stream;
    sendfile        on;
    keepalive_timeout  65;

    server {
        server_name  ning.sjtu.edu.cn;
        listen       80;
        return 301 https://$server_name$request_uri;
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   /usr/share/nginx/html;
        }

    }

    # HTTPS server
    server {
        listen       443 ssl;
        server_name  ning.sjtu.edu.cn;

        ssl_certificate      /etc/letsencrypt/live/ning.sjtu.edu.cn/fullchain.pem;
        ssl_certificate_key  /etc/letsencrypt/live/ning.sjtu.edu.cn/privkey.pem;

        location / {
            proxy_pass https://academic532.github.io;
            proxy_redirect default;
            proxy_buffering off;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Protocol $scheme;
        }
    }

}
```

配置文件主要完成了以下几件事情：

1. 监听 80 端口的 http 请求，强制跳转到 https 请求；
2. 监听 443 端口的 https 请求，配置加密钥对；
3. 反向代理到 `https://academic532.github.io`

修改配置文件后使用 `sudo systemctl restart nginx.service` 重新启动后台服务，完成配置。

## 参考

1. [Let's Encrypt - Arch Wiki](https://wiki.archlinux.org/index.php/Let%E2%80%99s_Encrypt)
2. [Let's Encrypt - certbot](https://certbot.eff.org/#arch-nginx)
3. [图解SSL/TLS协议](http://www.ruanyifeng.com/blog/2014/09/illustration-ssl.html)
4. [SSL/TLS协议运行机制的概述](http://www.ruanyifeng.com/blog/2014/02/ssl_tls.html)
