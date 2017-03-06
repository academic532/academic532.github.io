# FTP 服务配置

## 安装 vsftpd

使用 `pacman` 安装 `vsftp` 并开启 `vsftpd.service`

```bash
$ sudo pacman -S vsftp
$ sudo systemctl enable vsftpd.service
$ sudo systemctl start vsftpd.service
```

## 配置文件

编辑 `/etc/vsftpd.conf`，替换文件内容如下：

```bash
nonymous_enable=NO
no_anon_password=NO
local_enable=YES
write_enable=YES
dirmessage_enable=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_list_enable=YES
chroot_list_file=/etc/vsftpd.chroot_list
allow_writeable_chroot=YES
listen=YES
userlist_enable=YES
userlist_file=/etc/vsftpd.user_list
userlist_deny=NO
seccomp_sandbox=NO
```

编辑 `/etc/vsftpd.user_list` 如下

```bash
public
```

编辑 `/etc/vsftpd.chroot_list` 如下

```bash
public
```

## 新建用户

创建 `public` 用户

```bash
$ sudo useradd -m -g users -s /bin/bash public
```

## 完成配置

输入

```bash
$ sudo systemctl restart vsftpd.service
```

重新启动 `vsftpd.service` 完成配置。

## 安全性保证

public 账户的密码建议使用随机字符串，并仅限内部共享。随机字符串生成工具可使用 [LastPass](https://www.lastpass.com/)。
