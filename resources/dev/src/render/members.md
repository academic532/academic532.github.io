Members 页面维护
===============

Members 页面对应的数据文件为 `_data/members.json`，数据索引存储在 `"entry"` 键下，分为 4 个大类，分别为：Professor、Ph.D Students、Master Students、Alumni，各个大类内的人员存储在对应的 `"items"` 键中，结构非常明了。每个人的信息必选项包括：`"name"`、`"avatar"`，分别对应于姓名和头像。另外，`"misc"` 数组中存储的键-值对为自定义项。`"link"` 对应附加介绍页面的链接。

注意，头像图片放置于 `/media/members` 目录中。