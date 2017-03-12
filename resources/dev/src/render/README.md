## 模版风格的页面渲染

为了实现网页内容的可维护性，[guanhao](mailto:guanhwang@outlook.com) 利用了 Jekyll 的 [Data Files](https://jekyllrb.com/docs/datafiles/) 特性配合其模版语法 Hack 了几乎所有内容页面的渲染。

### 特性

在维护以下几个页面的 **内容** 时，无需修改html代码，而只需修改其在 `_data` 目录中的索引文件即可

1. 首页：修改 `_data/homeSlider.json`、`_data/conferences.json`、`_data/news.json`
2. Members：修改 `_data/members.json`
3. Gallery：修改 `_data/gallery.json`
4. Research：修改 `_data/research.json`、`_data/projects.json`
5. Publications：修改 `_data/publications.json`

### tl;dr

若需更改相关页面的内容，阅读本章的对应页面即可，需要注意的是，为了修改索引文件，需要对 [json](http://www.json.org/json-zh.html) 有所了解，当然，掌握基本的 git 操作（`add`、`commit`、`push`）也是必要的，若完全不了解相关操作，首先需要阅读 [版本管理系统](/resources/dev/practice/git-vcs.html) 和 [最佳实践](/resources/dev/practice/bp.html) 两节内容。
