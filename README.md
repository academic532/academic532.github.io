# 实验室网页

> CI-driven web page.

## 构建状态

网页通过 [Travis CI](https://travis-ci.org/) 自动化构建和部署。

当前状态：[![Build Status](https://travis-ci.org/academic532/academic532.github.io.svg?branch=dev)](https://travis-ci.org/academic532/academic532.github.io)

## 注意事项

为了保证网站运行正常，设定了如下规定：

不要手动修改 `master` 分支上的代码，任何更改都应该发生在 `dev` 分支上，Travis CI 会自动地运行构建脚本，若构建成功，才会部署到 `master` 分支上。
