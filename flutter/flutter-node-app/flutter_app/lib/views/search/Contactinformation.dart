/*
INTRO:联系方式
DATA:本地
 */
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Contactinformation extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      margin: EdgeInsets.only(top: 35.0),
      child:new Row(
        children:[
            new Expanded(
              child:new Column(
                children:[
                  
                  new SetInspirations(),
                ]
              )
            )
        ]
      )
    );
  }
}
//设置城市
class SetInspirations extends StatefulWidget{
  //SetCity({Key key,this.mark}):super(key:key);
  @override
  _SetInspirations createState()=>_SetInspirations();
}
class _SetInspirations extends State<SetInspirations>{
  @override  
  Widget build(BuildContext context){
      return Column(    
          children:[
          new ListGetData(),//.elementAt(testList6.length - 1)
        ]
    );
  } 
}
//定义类
class Models{
  final String title;
  final String content;
  final String img;
  final String mark;
  Models({
    this.title,
    this.content,
    this.img,
    this.mark,
  });
  factory Models.formJson(Map<String,dynamic> json){
    return Models(
      title:json['title'] as String,
      content:json['content'] as String,
      img:json['img'] as String,
      mark:json['mark'] as String,
    );
  }
}
//获取数据
class ListGetData extends StatefulWidget{
  ListGetData({Key key,this.mark}):super(key:key);
  final String mark;
  @override
  _ListGetData createState()=>_ListGetData();
}
class _ListGetData extends State<ListGetData>{
  Models models;
  List data=[
    {'title':'24小时中文客服','content':'400-841-0328','img':'https://z1.muscache.cn/airbnb/static/homepages/china/icons/phone_icon-1ab8d71426288cfc4b187b2228d33aa0.png'},
    {'title':'安全支付','content':'支付宝付款已向中国用户开通','img':'https://z1.muscache.cn/airbnb/static/homepages/china/icons/alipay_icon_2x-b02a7518b9ccf6eda87a38700ee54f85.png'},
    {'title':'芝麻信用','content':'实名认证房东房客信息，真实可靠','img':'https://z1.muscache.cn/airbnb/static/homepages/china/icons/sesame_credit@2x-18ded65dcd6b35e51339724b059f3e8c.png'},
  ];
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    if (data != null ) {
        return new Container(
          height:200.0,
          child:ListView.builder(
            scrollDirection:Axis.horizontal,
            itemCount:data.length,
            itemBuilder:(BuildContext context,int index){
              Models model = Models.formJson(data[index]); 
              return GetDataSpecialofferRender(title:model.title,content:model.content,mark:model.mark,img:model.img);
            }
          )
        );
    }else{
      return new Container(
          child:Text('暂无数据')
        );
    }
  }
}
class GetDataSpecialofferRender extends StatelessWidget{
  GetDataSpecialofferRender({Key key,this.title,this.content,this.mark,this.img}):super(key: key);
  final String title;
  final String content;
  final String mark;
  final String img;
  @override
  Widget build(BuildContext context){
    return Container(
      padding:EdgeInsets.only(right:5.0),
      width:180.0,
      height:200.0,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Stack(
            children:<Widget>[
              Image(
                image: NetworkImage(img),
                height:100.0,
                fit:BoxFit.fill
              ),
              Positioned(
                right:10.0,
                child:Icon(Icons.hearing,color:Colors.white)
              ),
            ]
          ),
          Text(mark,textAlign:TextAlign.end,style:TextStyle(fontSize:10.0),maxLines:1),
          Text(title,style:TextStyle(fontSize:14.0,),maxLines:1),
          Text(content,style:TextStyle(fontSize:12.0,),maxLines: 2,overflow:TextOverflow.ellipsis),
        ]
      )
    );
  }

}