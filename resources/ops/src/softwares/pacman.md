# pacman 包管理器

pacman 是 Archlinux 的默认包管理器，常用的软件包均可通过 pacman 指令安装、升级和卸载。

## 安装

```bash
$ sudo pacman -S [package_name]
```

其中 `[package_name]` 为需要安装的软件包的名字。可以通过 `pacman -Q` 指令查询软件包，或通过 [Packages-ArchLinux](https://www.archlinux.org/packages/) 页面进行软件包的检索。

## 卸载

```bash
$ sudo pacman -R [package_name]
```

## 升级

```bash
$ sudo pacman -Syyu
```

## 文档

1. [pacman - ArchWiki](https://wiki.archlinux.org/index.php/pacman)
2. [pacman/Tips and tricks - ArchWiki](https://wiki.archlinux.org/index.php/Pacman/Tips_and_tricks)
