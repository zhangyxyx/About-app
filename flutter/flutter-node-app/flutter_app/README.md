## 环境安装
官网：https://flutterchina.club/;  
按照上面的官网里面的起步就可以很快的安装成功;  
## 执行
flutter doctor //检验是否安装依赖成功  
flutter run //运行 
## 代码结构
1. pubspec.yaml  
    > flutter的配置文件
    主要作用是将项目的依赖包导入到项目中，如果想在项目中引入一个外部包的话，需要先在pubspec.yaml文件中将包的版本号对应上，然后才可以在具体的dart文件中引入包;  
2. images文件夹
    > 项目中需要的图片放置的文件夹
3. server文件夹

    > 放置node代码文件
    index.js 设置服务器，监听端口;   
    db.js 链接mysql数据库;  
    api.js 引入db.js文件，编写接口; 
    >  我把mysql里面的数据都放在资料/mysql里面的execl里面了，如果需要可以自己将execl导入到mysql中;
4. lib文件夹
    > flutter代码文件
    main.dart 主文件或者说是入口文件，其他的dart文件引入这里面;
    views文件夹
    > 包括各个组件
    具体不赘述了，可以直接看每个dart文件的顶部注释;
## 打包
    > https://jspang.com/posts/2019/02/01/flutter-base4.html
    生成apk 直接在终端中输入：flutter build apk
## 注意
1. 有三块需要添加到用户变量  
    export PUB_HOSTED_URL=https://pub.flutter-io.cn 新增变量;  
    export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn 新增变量;  
    下载的flutter中的bin的路径需要添加到用户变量的PATH中;    
2. flutter下载  
    可以使用github，但是我用的时候不知道为什么下载完成之后，添加到环境变量中，在cmd中运行flutter doctor的时候并没有成功;  
    可以直接使用https://flutter.io/docs/development/tools/sdk/archive#windows下载对应的包;  
3. Android Studio下载  
    现在下载的时候不能访问Android Studio的官网，所以这块有一个可以下载的链接http://www.android-studio.org/  
4. 验证是都成功  
    在cmd中执行flutter doctor出来图中显示就是对的了;  
5. 用上面的中文化之后会出现点击软件中的settings不能用 
6. 建议使用VSCode编辑器 
7. 上传到github上面的数据全是本地的，但是获取后台数据的代码也在dart文件中放着，用本地数据只要为了走通流程。
8. 关于flutter的具体用到的知识在Flutter.md文件中
    
    
## 资料
1. [安装参考：https](https://hk.saowen.com/a/54f59d11237aa4f629d0a63cecd8fbd9693c2c8dee82822b589510a7404275e8  )
2. [启动模拟器](https://juejin.im/post/5a9e3740518825558804e34a  )
3. [中文化android studio](https://blog.csdn.net/qq_33431249/article/details/80698840 )
4. [介绍项目的博客](https://www.cnblogs.com/GainLoss/p/10637491.html)


