/*
INTRO:主页面
DATA:
 */
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;


import 'productList.dart' show ProductList;
import 'search/Specialoffer.dart' show Specialoffer;
import 'search/Inspirations.dart' show Inspirations;
import 'search/Localcity.dart' show Localcity;
import 'search/Mostacclaimed.dart' show Mostacclaimed;
import 'search/Valueformoney.dart' show Valueformoney;
import 'search/Airbnbplubs.dart' show Airbnbplubs;
import 'search/Hotaddress.dart' show Hotaddress;
import 'search/Highscoreexperience.dart' show Highscoreexperience;
import 'search/Contactinformation.dart' show Contactinformation;



class Search extends StatelessWidget {
  //final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new MaterialApp(
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            new LogoApp(),
            Container(
              padding: const EdgeInsets.all(15.0),
              child:Column(
                children:[
                  new SetDate(),
                  new Specialoffer(),//特惠房源
                  new Inspirations(),//灵感集
                  new Localcity(),//精彩之地
                  new Mostacclaimed(),//最受好评
                  new Valueformoney(),//最具性价比
                  new Airbnbplubs(),//plus
                  new Hotaddress(),//热门目的地
                  new Highscoreexperience(),//高分体验
                  //new Contactinformation(),//联系方式
                ]
              )
            ),
          ],
        ),
      )
    );
  }
}
//顶部banner
class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    final src='images/Banner${(animation.value).toStringAsFixed(0)}.jpg';
    return new Center(
      child: new Container(
        //margin: new EdgeInsets.symmetric(vertical: 10.0),
        height: 180.0,
        child:new Image.asset(src,fit:BoxFit.fill),
      ),
    );
  }
}

class LogoApp extends StatefulWidget {
    @override
  _LogoAppState createState() => new _LogoAppState();
}
class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  double current=2;
  Animation<double> animation;
  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 15), vsync: this);
        animation = Tween<double>(begin: current-1, end: current).animate(controller);
        animation.addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            setState(() {
              current:3;
            });
            controller.reverse();
          } else if (status == AnimationStatus.dismissed) {
            controller.forward();
          }
        });
        controller.forward();
  }
  Widget build(BuildContext context) {
    return new AnimatedLogo(animation: animation);
  }
  dispose() {
    controller.dispose();
    super.dispose();
  }
}
//设置目的地、入住日期
class SetDate extends StatefulWidget{
  _SetDate createState()=> _SetDate();
}
class _SetDate extends State<SetDate>{
 //Your code here
 String date='入住退房日期';
 String address='请选择目的地、城市或景点';
 @override
  Widget build(BuildContext context){
    return Column(
      children:[
        Row(
          children:[

            Container(
              decoration:new BoxDecoration(
                color:Colors.white,
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.teal[800]),
                ),
              ),
              child:Text('房源',style:TextStyle(color:Colors.teal[800],fontWeight:FontWeight.bold)),
            ),
            Padding(
              padding:EdgeInsets.only(left:10.0,),
              child:Text('体验',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold))
            )
          ]
        ),
        Container(
          height:35.0,
          margin: const EdgeInsets.only(top:10.0),
          child:Row(
            children:[
              Icon(Icons.search,color: Colors.black26,),
              new Text(address,style:TextStyle(fontSize:14.0)),
              new Text('附近',style:TextStyle(fontSize:14.0,color:Colors.green,))
            ]
          ),
          decoration:new BoxDecoration(
            color:Colors.white,
            border:Border.all(width:1.0,color:Colors.black26),
            borderRadius:BorderRadius.all(Radius.circular(3.0)),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1.0, spreadRadius: 1.0),],
          ),
        ),
        GestureDetector(
          onTap: () async {
            final List<DateTime> picked = await DateRagePicker.showDatePicker(
                context: context,
                initialFirstDate: new DateTime.now(),
                initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                firstDate: new DateTime(2015),
                lastDate: new DateTime(2020)
            );
            if (picked != null && picked.length == 2) {
                String str;
                str='${picked.first.month}月:${picked.first.day}日 - ${picked.last.month}月:${picked.last.day}日';
                setState(()=>{
                  date=str
                });
            }
          },
          child: Container(
            height:35.0,
            margin: const EdgeInsets.only(top:10.0),
            child:Row(
              children:[
                Icon(Icons.date_range,color: Colors.black45,),
                new Text(date,style:TextStyle(fontSize:14.0))
              ]
            ),
            decoration:new BoxDecoration(
              color:Colors.white,
              border:Border.all(width:1.0,color:Colors.black26),
              borderRadius:BorderRadius.all(Radius.circular(3.0)),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1.0, spreadRadius: 1.0),],
            ),
          ),
        ),
        Container(
          height:40.0,
          alignment:Alignment.center,
          margin: const EdgeInsets.only(top:10.0),
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text('搜索房源',style:TextStyle(color:Colors.white,fontSize:14.0)),
            ]
          ),
          decoration:new BoxDecoration(
            color:Colors.teal[800],
            border:Border.all(width:1.0,color:Colors.teal[800]),
            borderRadius:BorderRadius.all(Radius.circular(3.0))
          ),
        ),
      ]
    );
  }
}

//地图


