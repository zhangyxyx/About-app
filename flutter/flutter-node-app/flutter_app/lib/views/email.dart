/*
INTRO:收件箱
DATA:
 */
import 'package:flutter/material.dart';
import '../main.dart' show TutorialHome;
class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new MaterialApp(
      home: new Scaffold(
        body:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              //verticalDirection: VerticalDirection.down,
              // textDirection:,
              //textBaseline: TextBaseline.alphabetic,
              children:[
                Container(
                  margin:EdgeInsets.only(top:10.0),
                  child:Text('没有消息',style:TextStyle(color:Colors.black,fontSize:20.0,)),
                ),
                Container(
                  margin:EdgeInsets.only(top:10.0),
                  child:Padding(
                    padding:EdgeInsets.all(5.0),
                    child:Text('找到喜欢的房源后，和房东取得联系。简单介绍一下自己，并告诉他们您此行的目的。',style:TextStyle(color:Colors.black,fontSize:14.0,)),
                  )
                ),
                Container(
                  width:150.0,
                  height:40.0,
                  margin:EdgeInsets.only(top:10.0),
                  alignment:Alignment.center,
                  decoration:new BoxDecoration(
                    color:Colors.red,
                    border:Border.all(width:1.0,color:Colors.black26),
                    borderRadius:BorderRadius.all(Radius.circular(3.0)),
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1.0, spreadRadius: 1.0),],
                  ),
                  child:GestureDetector(
                      onTap:(){
                      Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => new TutorialHome()),
                        );
                      },
                      child:Text('开始搜索',style:TextStyle(color:Colors.white,)),
                  )
                )
              ]
        )   
      )
    );      
  }
}