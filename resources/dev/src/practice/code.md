## 开发规范

1. 源码缩进 **一定** 要统一，推荐缩进为4个或2个空格，**不要** 用 TAB 缩进；
2. 第三方 CSS 或者 JS 统一使用 CDN 引入（参考 `_includes/head.html` 和 `_includes/scripts.html`），CDN 服务统一使用 [BootCDN](http://www.bootcdn.cn/);
3. 对于第三方 CSS 预定义的风格需要修改的地方，统一添加进 `assets/css/main.css`，会自动覆盖第三方CSS定义的样式；
4. CSS、HTML、JS 源码 **尽量** 分开放置，保持框架整洁性；
5. 推送之前，一定要先在本地测试，并且功能更新代码 **必须** 完善之后才能推送；
6. 自动触发远程编译是用来 **部署** 的，**不是** 用来测试的。想及时看到修改效果，最好的方法是在本地编译测试。
7. 框架可以自由扩展，但是 **必须** 保持易读性和整洁性。
8. 所有用到的网页组件，参考 [Bootstrap Material Design](http://fezvrasta.github.io/bootstrap-material-design/bootstrap-elements.html) 页面的组件实现。点击各个组件示例旁边的 `<>` 可以显示该部分的源代码。
