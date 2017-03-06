## 模版风格的页面渲染

为了实现网页内容的可维护性，[guanhao](mailto:guanhwang@outlook.com) 利用了 Jekyll 的 [Data Files](https://jekyllrb.com/docs/datafiles/) 特性配合其模版语法 Hack 了某些页面的动态渲染，记录如下，以供后续开发者参考。

### 特性

以下几种用例，触发相关网页内容修改所需修改的html代码行数均为 **0**，显著提升了网页的扩展性和可维护性。

1. **首页图片Slider渲染**： 若要更新首页Slider的图片，将图片添加到 `/media/homeSlider` 目录内，然后编辑 `_data/homeSlider.json` 文件修改索引数据即可。
2. **Gallery页面渲染**：若拍摄了一组新照片，只需要将这组照片的目录放到网站源码的 `/media/gallery/` 内，然后编辑 `/_data/gallery.json` 文件中增加这组照片的索引数据即可。

### tl;dr

若需更改相关页面的内容，阅读 [首页Slider维护](/resources/dev/render/homeSlider.html) 和 [Gallery页面维护](/resources/dev/render/gallery.md) 即可，需要注意的是，为了修改索引文件，需要对 [json](http://www.json.org/json-zh.html) 有所了解，当然，掌握基本的 git 操作（`add`、`commit`、`push`）也是必要的，若完全不了解相关操作，首先需要阅读 [版本管理系统](/resources/dev/practice/git-vcs.html) 和 [最佳实践](/resources/dev/practice/bp.html) 两节内容。
