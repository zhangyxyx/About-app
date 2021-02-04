# 软件
HBuilderX</br>
vscode</br>
雷电模拟器</br>

# vue-cli3项目
## 结构
安装node</br>
可以安装yarn（自我感觉比npm好用）</br>
yarn add vue</br>
yarn global add @vue/cli</br>
检测 vue --version</br>
创建一个项目 vue create hello-world</br>
执行 yarn serve</br>
打包 npm run build</br>
## 注意
1. PC端
2. 移动端
    将px转化为rem</br>
    安装 yan add lib-flexible</br>
    创建vue.config.js中添加</br>
​```javascript
module.exports = {
    publicPath: "",
    runtimeCompiler: true,
    productionSourceMap: false,
    lintOnSave:false,
    css: {
        loaderOptions: {
        css: {},
        postcss: {
            plugins: [
            require('postcss-px2rem')({
                remUnit: 37.5,
            }),
            ],
        },
        },
    },
    configureWebpack: {
        resolve: {
        alias: {
        },
        },
    },
}; 
​```
在main.js中添加import "lib-flexible/flexible.js" 可以将style中css样式px转化为rem
3. 取消eslint
    创建.eslintrc.js
​```javascript
module.exports = {
    root: true,
    env: {
      node: true
    },
    extends: ["plugin:vue/essential"],
    rules: {
      "no-console": process.env.NODE_ENV === "production" ? "error" : "off",
      "no-debugger": process.env.NODE_ENV === "production" ? "error" : "off"
    },
    parserOptions: {
      parser: "babel-eslint",
    }
  }; 
​```
# HBuilderX项目
文件-新建-项目</br>
manifest.json主要是对生成app的一些配置</br>
## 打包
打开manifest.json，点击发行-原生APP云打包-安卓-使用公共测试证书
## 注意
1. 针对具有刘海屏的手机可以实现一些适配，打开manifest.json中代码视图，找到plus添加以下代码：
​```javascript
"statusbar" : {
    "immersed" : "supportedDevice",
    "style" : "dark",
    "background" : "#141526"
}, 
​```
2. HBuilder有一个不好的地方是每天打包apk有次数限制，还有cordova这个也可以打包

# 具体项目
流量监测（具体内容是：监测某一个IP的上传下载）

# 资料
vue：https://cn.vuejs.org/</br>
vue-cli：https://cli.vuejs.org/zh/</br>
element-ui：https://element.eleme.cn/#/zh-CN</br>
HBuilder：https://www.dcloud.io/</br>
DCloud开发者中心：https://dev.dcloud.net.cn/</br>
cordova：http://cordova.axuer.com/#getstarted</br>
雷电模拟器：http://www.ldmnq.com/ldy/bd6000.html?renqun_youhua=2269518&bd_vid=10489724182988819420</br>

