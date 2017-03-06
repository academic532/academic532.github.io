## 实现细节

主要使用了 Jekyll 的 [Data Files](https://jekyllrb.com/docs/datafiles/) 特性和使用 [Liquid](https://shopify.github.io/liquid/) 语法的 [Templates](https://jekyllrb.com/docs/templates/) 特性。

Data Files 允许在 `/_data` 目录中存储数据文件，供 Jekyll 渲染模版时读取，支持 `*.yml|*.csv|*.json` 等格式。在对应页面使用 Liquid 语法书写模版时可以读取这些文件中存储的数据。

例如 `/gallery/index.html` 文件，对应于 Gallery 页面的源码，只需要 14 行。

```html
---
layout: gallery
---
<div class="container">
  {% for entry in site.data.gallery.entry %}
    <h3>{{ entry.place }} | {{ entry.date }}</h3>
    <div class="row lg-item" id="{{ entry.folder }}">
      {% for pic in entry.pics %}
          <div class="tb-item col-xs-2" data-src="/media/gallery/{{ entry.folder}}/{{ pic }}">
            <a href="#" class="thumbnail"><img src="/media/gallery/{{ entry.folder}}/{{ pic }}" /></a>
          </div>
      {% endfor %}
    </div>
  {% endfor %}
</div>
```

Jekyll 会读取 `gallery.json` 中的索引信息，然后根据模版，动态地渲染生成 HTML 页面。

每组照片的照片墙查看功能使用了 [lightGallery](https://sachinchoolur.github.io/lightGallery/) 插件，首先使用 jquery 选择器选择所有 class 为 `lg-item` 的元素，然后使用其 id 使用选择器触发 lightGallery 插件即可。

```javascript
<script type="text/javascript">
  $(document).ready(function() {
    $(".lg-item").each(function() {
        var itemid = $(this).attr("id");
        $("#"+itemid).lightGallery({
          thumbnail:true,
          selector: '.tb-item'
        }); 
    });
  });
</script>
```

首页的Slider使用了完全相同的特性来实现，可阅读 `/index.html` 和 `/_data/homeSlider.json` 文件了解更多细节。