首页维护
======

## 首页图片Slider维护

首先将需要添加的照片放入 `/media/homeSlider` 目录中，删除掉不再显示的照片，然后编辑 `/_data/homeSlider.json` 文件中的 `entry.pics` 键值，如下

```
{
  "usage": "index file of Slider on homepage",
  "entry": {
    "folder": "homeSlider",
    "pics": [
      "slide1.jpg",
      "slide2.jpg",
      "slide3.jpg",
      "slide4.jpg"
    ]
  }
}
```

将 `entry.pics` 键值数组中的文件名替换为更新的照片的文件名即可。

## 首页 Conference Submission Entries 维护

编辑 `_data/conferences.json` 文件，在 `"entry"` 键下添加对应记录即可，示例如下

```
{
  "usage": "index of conference submission ecntries",
  "entry": [
    {
      "name": "IFAC 2017(The 20th World Congress of the International Federation of Automatic Control)",
      "link": "http://www.ifac2017.org/"
    }
}
```

`"name"` 对应会议名称，`"link"` 对应其网址。

## 首页 News 维护

编辑 `_data/news.json` 文件，在 `"entry"` 键下添加对应记录即可，示例如下

```
{
  "usage": "index file of news",
  "entry": [
    {
      "name": "The back-to-school forum of Wang Zhanhao",
      "link": "http://automation.sjtu.edu.cn/Show.aspx?info_lb=610&info_id=2451&flag=101"
    }
  ]
}
```

类似的，分别编辑 `"name"` 和 `"link"` 即可。