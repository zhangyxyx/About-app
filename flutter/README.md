# flutter-app
> 主要是通过flutter仿照airbnb的app  
> 项目基本结构和编写的设计知识在flutter_node_app的flutter_app中README.md和基础.md文件中
#### 前端
> 前端用的就是flutter,前端的代码都在lib中
1. 执行  
    用vscode打开项目，连接上模拟器，在flutter_app文件夹下面flutter run进行运行;
2. 结构  
    main.dart是主文件，在模拟器进行运行之后，第一个运行的文件就是这个文件，其他的组件是导入到这个文件的，和React是一样的，将全部的页面都区分成一个一个的组件，进行组合;  
    views放置的是一个一个的组件;  
#### 后台
> 后台用的是node框架express
    >目前在dart中获取后台接口的代码我注释了，主要是为了走通这个流程
1. 执行  
    在flutter_app中的server的文件夹中放置的是后台代码，cd server在这个文件夹下面执行命令：node index 进而执行后台代码进行连接本地服务器;
2. 结构  
    在index.js中控制一下监控接口，引入api文件，api文件中是编写的是接口代码;  
    因为用的是mysql，连接mysql的代码在db.js中;  
    在api.js中将db.js文件引入，编写接口代码，导出接口;  
## 资料
1. [Flutter API](https://docs.flutter.io/index.html)
2. [Flutter中文网](https://flutterchina.club/)
3. [Flutter实战](https://book.flutterchina.club/)
4. [Flutter Doc](https://flutter.dev/docs)
5. [Flutter Icon](https://material.io/tools/icons/?icon=favorite_border&style=baseline)
6. [Flutter包](https://pub.dartlang.org/)

