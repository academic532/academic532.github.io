## Git 版本管理

[Git](https://git-scm.com/) 是目前最流行的分布式版本管理系统，越来越多的开源项目使用 Git 作为版本管理系统，当前流行的代码托管网站 [Github](https://github.com/) 也使用 Git 作为版本管理系统。使用 Git 版本管理系统的理由：

1. 代码的版本迭代更加规范，代码管理更方便
2. 便于多个开发者协作
3. 配置持续集成服务实现自动化部署和交付

### Git 教程

在开始之前，首先了解什么是 Git, 以及 Git 的基础使用，首先阅读以下两份简短的教程：

1. [git - 简明教程](http://rogerdudler.github.io/git-guide/index.zh.html)
2. [常用 Git 命令清单](http://www.ruanyifeng.com/blog/2015/12/git-cheat-sheet.html)

1中介绍了 git 的安装和基本操作的方式，2是一份比较完备的git指令清单。

### Github 相关配置

网站代码托管在 [academic532/academic532.github.io](https://github.com/academic532/academic532.github.io)，关联了 Github Pages 服务，访问 [academic532.github.io](https://academic532.github.io/) 可以查看网页。任何人都可以查看 Github 上的开源仓库，但是只有经过授权的开发者才能对仓库内的源代码进行修改。Git 使用 [SSH 协议](http://www.ruanyifeng.com/blog/2011/12/ssh_remote_login.html) 来完成这个授权过程的安全验证。

启动终端，输入以下指令生成密钥对

```bash
ssh-keygen
```

连续三次回车完成密钥对生成。生成的密钥对在用户目录的 `.ssh`文件夹里面。将公钥内容打印到终端

```
cat ~/.ssh/id_rsa.pub
```

使用鼠标选择公钥字符串，复制到粘贴板以备后用。

访问 [Github](https://github.com) 创建一个账号。若要获取对网站代码仓库的修改权限，有两种方法：

1. 将公钥添加到[academic532/academic532.github.io](https://github.com/academic532/academic532.github.io)项目 Settings 菜单中的 Deploy Keys 内；
2. 将公钥添加到Github账户的[SSH Keys](https://github.com/settings/keys)中，然后通过项目 Settings 菜单中的 Collaborators 添加自己的 Github 账户。

> **注意**：若通过Deploy Keys方法添加，需要勾选 **Allow write access** 选项。

通过以上任意一种方法配置权限后，在终端中输入

```bash
git config --global user.name "[your-name]"
git config --global user.email [your-email]
```

配置自己的身份，将`[your-name]` 替换为自己的名字代号，推荐英文，将 `[your-email]` 替换为自己的邮箱。**该步操作仅需一次即可**。

然后使用以下指令克隆网站代码到本地

```bash
git clone --depth=1 --branch=dev git@github.com:academic532/academic532.github.io.git labpage
```

若配置无误，可将网站源码拷贝到 `labpage` 目录中。

### 管理哲学

Github Pages 服务会根据 `master` 分支的内容在后台自动使用 `github-pages` 工具编译网页源码，然后将生成的网页源码(`_site`) 部署到 [academic532.github.io](https://academic532.github.io/)。因此每次 `master` 分支内代码的更新都会触发 Github Pages 服务构建网页源码并部署。

因此，`master` 分之内的代码和展示给网站用户的内容直接关联，为了保持规范和避错，作出规定，`master` 分支的内容的改动必须在经过测试后才能生效。因此，添加了一个分支 `dev`，所有对网站源代码的改动，都在 `dev` 分支上测试后再合并进 `master` 分支，并且进一步规定 `master` 分支不能人为地修改，网站开发者只能在 `dev` 分支上改动代码和提交自己的修改。

每次推送到 `dev` 分支的提交，都会自动触发 [Travis CI](https://travis-ci.org) 持续集成服务的自动编译，若编译没有报错，则会自动地推送到 `master` 分支，从而完成对网站内容的修改。若编译报错，该次修改将不会推送到 `master` 分支。Travis CI 端的配置细节，参考[Travis CI Push 权限配置](https://oncemore2020.github.io/blog/travis-deploy/)，一般网站开发者可以略过该部分。

### 典型操作

一次典型的修改网站代码的操作包括以下步骤：

1. 确保自己在 `dev` 分支上；
2. 修改网页代码；
3. 启动终端，在网页代码目录中一次输入：
    * `git add --all`
    * `git commit -m"说明文字"`
    * `git push origin dev`
4. 到 [Travis](travis-ci.org/academic532/academic532.github.io)观察自动构建状态。

### 参考文档

1. [持续集成是什么？](http://www.ruanyifeng.com/blog/2015/09/continuous-integration.html)
2. [git - 简明教程](http://rogerdudler.github.io/git-guide/index.zh.html)
3. [常用 Git 命令清单](http://www.ruanyifeng.com/blog/2015/12/git-cheat-sheet.html)
4. [Travis CI Push 权限配置](https://oncemore2020.github.io/blog/travis-deploy/)