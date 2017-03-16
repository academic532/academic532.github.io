## 典型操作

一次典型的修改网站代码的操作包括以下步骤：

1. 确保自己在 `dev` 分支上；
2. 修改网页代码；
3. 启动终端，在网页代码目录中一次输入：
    * `git add --all`
    * `git commit -m"说明文字"`
    * `git push origin dev`
4. 到 [Travis](travis-ci.org/academic532/academic532.github.io)观察自动构建状态。