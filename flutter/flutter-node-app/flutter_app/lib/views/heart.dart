/*
INTRO:心愿
DATA:本地（走流程的demo）
 */
import 'package:flutter/material.dart';
import 'heart/Hearthome.dart' show Hearthome;
class Heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new MaterialApp(
      home: new Scaffold(
        body:ListView(
          padding:EdgeInsets.only(top:40.0,left:15.0,right:15.0),
          children:[
            Text('心愿单',style:TextStyle(color:Colors.black,fontSize:25.0,fontWeight:FontWeight.w600)),
            Hearthome()
          ]
        )
      )
    );   
  }
}