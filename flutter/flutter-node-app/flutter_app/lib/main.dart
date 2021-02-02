/**
 * color:teal 800
 */
import 'package:flutter/material.dart';

import 'views/search.dart' show Search;
import 'views/heart.dart' show Heart;
import 'views/book.dart' show Book;
import 'views/email.dart' show Email;
import 'views/user.dart' show User;



void main() {
  //debugPaintSizeEnabled = true;
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(),

  ));
}
class TutorialHome extends StatefulWidget{
  @override
  _TutorialHomeState createState()=>_TutorialHomeState();
}
class _TutorialHomeState extends State<TutorialHome> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController controller;
  List data=['搜索','心愿','故事','收件箱','我的'];
  @override
  void initState(){
    controller=new TabController(vsync:this,length:5);
  }
  Widget build(BuildContext context) {

    //Scaffold是Material中主要的布局组件.
    return new Scaffold(
        body: new TabBarView(
          controller:controller,
          children: <Widget>[
            new Search(),
            new Heart(),
            new Book(),
            new Email(),
            new User(),
          ],
        ),
        bottomNavigationBar:new Material(
          shadowColor:Color(0xFF000000),
          color:Colors.white,
          child:new TabBar(
            controller:controller,
            labelColor: Colors.red,
            labelStyle: new TextStyle(fontSize: 14.0),
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: new TextStyle(fontSize: 12.0),
            indicator: new ShapeDecoration(shape: new Border.all(color: Colors.white, width: 1.0)),
            tabs:<Tab>[
                new Tab(text:'探索',icon:new Icon(Icons.search,)),
                new Tab(text:'心愿',icon:new Icon(Icons.favorite_border,)),
                new Tab(text:'故事',icon:new Icon(Icons.book)),
                new Tab(text:'收件箱',icon:new Icon(Icons.email)),
                new Tab(text:'我的',icon:new Icon(Icons.person)),
            ]
          ),
        )
      );   
  }
}

