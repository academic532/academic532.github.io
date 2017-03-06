## Gallery 页面维护

例如实验室去 Shanghai Disneyland 拍摄了一组照片，现将经过筛选的照片放入 `disney` 目录中，拷贝到网站源码的 `/media/gallery` 目录内，目录结构如下：

```
|media
|-gallery
|--disney
|---disney1.JPG
|---disney2.JPG
|---disney3.JPG
|---disney4.JPG
|---disney5.JPG
|---disney6.JPG
|---disney7.JPG
|---disney8.JPG
|---disney9.JPG
|---disney10.JPG
```

然后编辑网站源码的 `/_data/gallery.json` 文件，在 `"entry"` 键下添加一条索引如下：

```
{
  "place": "Shanghai Disneyland",
  "date": "2016-10-25",
  "folder": "disney",
  "pics": [
    "disney1.JPG",
    "disney2.JPG",
    "disney3.JPG",
    "disney4.JPG",
    "disney5.JPG",
    "disney6.jpg",
    "disney7.JPG",
    "disney8.JPG",
    "disney9.JPG",
    "disney10.JPG"
  ]
},
```

各个键-值对的用途如下：

|键|值类型|用途|
|:-|:----|:--|
|"place"|字符串|地点|
|"date"|字符串|时间|
|"folder"|字符串|照片目录|
|"pics"|字符串数组|照片的文件名列表|

创建完成后，推送更改到 `dev` 分支即可。

> **注意**：照片的文件名索引值要严格一致，特别要注意图片的后缀名。