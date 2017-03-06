## 首页Slider维护

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