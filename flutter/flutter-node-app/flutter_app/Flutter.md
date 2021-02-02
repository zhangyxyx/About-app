### 介绍
- 使用flutter仿照爱彼邻实现一个app
### 基础
- 平分 Expanded
- 列表 ListView
- 文本 Text
- 图片 image
#### 开发
1. EdgeInsets的值：
    - EdgeInsets.only(left: 5.0,right:5.0),//可以单独把某个值设置
    - EdgeInsets.all(8.0)   //全部的设置
2. 叠放
``` dart
Stack(
    children:[
    new Image.asset('images/B-4-1.jpg', height:130,fit:BoxFit.fitWidth),
    new Positioned(
        right: 15.0,
        bottom: 10.0,
        child:Container(
        padding: EdgeInsets.only(left: 5.0,right:5.0,top:3.0,bottom:3.0),
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
        ),
        child:new Text('民宿',style:TextStyle(color:Colors.black)), 
        )
    ),
    ] 
), 
```
3. 父子组件通信
- 父组件
``` dart
new ModelView(title:'',content:'北京 万里长城中最为惊险刺激的一段，户外爱好者却最为钟情',mark:'民宿',img:'images/B-4-1.jpg'), 
```
- 子组件
``` dart
class ModelView extends StatelessWidget{
  ModelView({Key key, this.title,this.content,this.mark,this.img}):super(key: key);
  final String title;
  final String content;
  final String mark;
  final String img;
  @override
  Widget build(BuildContext context){
    return new Expanded(
          child:new Container(
              height:180,
              padding: EdgeInsets.all(5.0),
              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Stack(
                    children:[
                      new Image.asset(img, height:130,fit:BoxFit.fitWidth),
                      new Positioned(
                        right: 15.0,
                        bottom: 10.0,
                        child:Container(
                          padding: EdgeInsets.only(left: 5.0,right:5.0,top:3.0,bottom:3.0),
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                          ),
                          child:new Text(mark,style:TextStyle(color:Colors.black)), 
                        )
                      ),
                    ] 
                  ), 
                  new Text(content,style:new TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 12.0,)), 
                ]
              )
          )
        );
                        
  }
} 
```
4. 拆分
- import： 父组件引入子组件，可以实现父组件看不到子组件的某些函数
父组件
``` dart
import 'views/search.dart' show Search;
```
子组件
``` dart
class Search extends StatelessWidget {}
```
- part：父组件引入子组件，子组件作为一部分引入到父组件中，子组件完全暴露到父组件中
父组件
``` dart
part './book/Featured.dart';
```
子组件
``` dart
part of '../book.dart';
class ListingView extends StatefulWidget{}
```
5. 数据交互
- http获取后台数据 import 'package:http/http.dart' as http; import 'dart:convert';
``` dart
_get() async{
    try {
       var uri =  Uri.http('10.0.2.2:8081', '/book', {'mark':'景点','belong':"街区"});
      var response = await http.get(uri);
      print(response.body);
    } catch (error) {
      print(error);
    }
}
```  
- dio获取后台数据 import 'package:dio/dio.dart';
``` dart
_get() async{
  Dio dio = new Dio();
  Response response;
  try {
    response = await dio.get('https://short-msg-ms.juejin.im/v1/topicList/recommend?uid=&device_id=&token=&src=web');//"https://short-msg-ms.juejin.im/v1/topicList/recommend?uid=&device_id=&token=&src=web"
   print(response);
  } catch (e) {
    print(e);
  }
}
```  
https://stackoverflow.com/questions/55394024/flutter-uses-http-to-retrieve-the-background-interface-error-formatexception 
https://github.com/hillelcoren/flutter-redux-starter/issues/16
和node进行数据交互

https://stackoverflow.com/questions/47592977/receiving-data-from-localhost-throws-connection-refused-error?noredirect=1&lq=1
https://segmentfault.com/a/1190000004261139
https://blog.csdn.net/monster_love_/article/details/85317182
https://www.npmjs.com/package/mysql
dart – 将数据传递给StatefulWidget并在Flutter中以其状态访问它:https://codeday.me/bug/20190114/516494.html

https://stackoverflow.com/questions/53956571/formatexception-invalid-radix-10-number

6. 创建数据库
我用的是低版本的数据库mysql-5.1.73-winx64.msi，直接按下一步进行安装
数据库工具用的是navicat121_premium_cs_x64.exe

7. 布局
MaterialApp->Scaffold

8. 事件交互
```dart
new GestureDetector(//手势里面有很多内容，现在选取一个Tap
    onTap:(){
      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new ProductList()),
      );
    },
)
```

9. 路由导航
静态路由
在主页面
```dart
void main() {
  runApp(
      new MaterialApp(
        home: new Screen1(),
        routes: <String, WidgetBuilder> {
          '/screen1': (BuildContext context) => new Screen1(),
          '/screen2' : (BuildContext context) => new Screen2(),
          '/screen3' : (BuildContext context) => new Screen3(),
        },
      )
  );
}
```
主动跳转页面：
```dart
onPressed: () {//注意这里面父级是手势
  Navigator.push(
    context,
    new MaterialPageRoute(builder: (context) => new SecondScreen(params)),//可以加参数
  );
},
```
被跳转到的页面 SecondScreen

10. 引入第三方库
查看第三方库：https://pub.dartlang.org/
在dart中：
import 'package:http/http.dart' as http;
在pubspec.yaml：
dependencies:
  flutter:
    sdk: flutter
    cupertino_icons: ^0.1.2
    http : ^0.12.0  //添加 注意空格

11. 获取到数据之后渲染数据
注意我们需要用到json数据变成dart对象
```dart
Models model = Models.formJson(item);
```

12. Icon
```dart
Icon(Icons.search,color: Colors.black45,),
```
https://juejin.im/post/5b7ac50d6fb9a01a0b318e71



13. State中引用StatefulWidget中变量
```dart
class SetCity extends StatefulWidget{
  final int mark;
  SetCity({Key key,this.mark}):super(key:key);
  @override
  _SetCity createState()=>_SetCity();
}
class _SetCity extends State<SetCity>{}
```
_MyStatefulWidgetState类可以访问存储在MyStatefulWidget中的任何变量，使用widget.{变量的名称}。 例如：widget.color

14. 控制元素放置左边还是右边
```dart
new Align(
  alignment: FractionalOffset.bottomRight,
  child: new Image.network('http://up.qqjia.com/z/25/tu32710_11.jpg'),
),
```

15. 控制偏左偏右
Align Center

16. 地图
> https://lbs.amap.com/faq/top/hot-questions/249
> 如果某些配置的环境不知道路径，可以打开电脑属性中的环境配置里面应该有的
- 获取SH1
https://blog.csdn.net/lewes1103/article/details/52757527

#### 基本的功能
1. 有滚动的列表    

如果只是单纯的叠加，在超出一定范围之后，就会出现黑黄色的条纹，所以我们需要用ListView布局     
2. 底部导航

### 问题
1. 长布局之后界面边缘显示黑黄色的条纹
    因为你的布局是不可变的，但是里面的内容超出了最大的高度 
2. 引入图片
    - 和pubspec.yaml同级创建一个images文件夹，放图片
    - 在pubspec.yaml中写一个asset下面放图片的路径
    - 在main.dart文件中将文件路径放进去就可以了
3. flutter内置的图标
    https://material.io/tools/icons/?icon=favorite_border&style=baseline
4. 开始debug模式
    import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
    void main() {
        debugPaintSizeEnabled = true;
        runApp(new MaterialApp(
            title: 'Flutter Tutorial',
            home: new TutorialHome(),
        ));
    }
5. 使用setState必须是下面这种格式
```dart
class MainPage extends StatefulWidget{
  HomePage createState()=> HomePage();
}
class HomePage extends State<MainPage>{
 //Your code here
}
```
6. Container 宽高计算
Material 框架为 Container 设定的最大/最小尺寸：minWidth 屏幕宽度maxWidth 屏幕宽度minHeight 屏幕高度maxHeight 屏幕高度，可以看到 Container 的宽高已经被父组件定的死死的了，必须铺满整个可视区域，即便代码当中明确设定了宽高也是无效的。Row/Column 是准备用来做布局的，虽然它们也要遵守上面的 BoxContraints 机制，但是是 “不可见” 的，它们为 Container 设定的尺寸约束是宽松的

7. flutter的盒子限制
尽可能大：Center和ListView等
和子部件一样大：Transform和Opacity等
特定大小：Image和Text等
特殊情况：Row和Column由其给定的约束决定，Container由其构造函数的参数决定
### 资料
1. 修改app的名字和app的图标
    https://www.jianshu.com/p/10b93adf842c
2. 数据库用mysql 工具Navicat for MySQL   
   注册码：NAVH-WK6A-DMVK-DKW3
3. 教程
  - https://www.yuque.com/xytech/flutter/tge705
4. dart数据类型方法
  - https://blog.csdn.net/hekaiyou/article/details/51374093
5. 父子Widget之间传递State
- https://juejin.im/post/5c768ad2f265da2dce1f535c
6. 打包成apk
- https://jspang.com/posts/2019/02/01/flutter-base4.html
flutter build apk
7. 基础
- https://www.cnblogs.com/GainLoss/p/10637491.html
8. 路由问题
- https://flutter.dev/docs/cookbook/navigation/navigation-basics

### 问题：
1. Flutter uses http to retrieve the background interface, error: FormatException: Invalid radix-10 number
- https://stackoverflow.com/questions/53956571/formatexception-invalid-radix-10-number


     
    
