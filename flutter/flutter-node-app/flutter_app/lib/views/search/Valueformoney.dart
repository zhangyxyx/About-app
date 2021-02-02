/*
INTRO:最具性价比的房源
DATA:home
 */
import 'package:flutter/material.dart';
import 'search-model.dart' show GetDataSpecialofferRender;
import 'package:http/http.dart' as http;
import 'dart:convert';

class Valueformoney extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      margin: EdgeInsets.only(top: 35.0),
      child:new Row(
        children:[
            new Expanded(
              child:new Column(
                children:[
                  new Row(
                    children:[
                      Container(
                        padding:EdgeInsets.only(bottom:5.0),
                        child:new Text(
                          '北京最具性价比的房源',
                          style:new TextStyle(
                            color:Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 20.0,
                          )
                        )
                      )  
                    ]
                  ),
                 
                  new SetAirbnbplubs(),
                ]
              )
            )
        ]
      )
    );
  }
}
//设置城市
class SetAirbnbplubs extends StatefulWidget{
  //SetCity({Key key,this.mark}):super(key:key);
  @override
  _SetAirbnbplubs createState()=>_SetAirbnbplubs();
}
class _SetAirbnbplubs extends State<SetAirbnbplubs>{
  var mark=0;
  @override  
  List <String> items=['北京','上海','成都','西安','杭州','南京','广州','武汉'];
  Widget build(BuildContext context){
      return Column(    
          children:[
          new ListGetData(mark:items.elementAt(mark)),//.elementAt(testList6.length - 1)
          new Container(
            width:300.0,
            height:40.0,
            alignment:Alignment.center,
            foregroundDecoration:new BoxDecoration(
              border:new Border.all(color:Colors.teal[800]),
              borderRadius:BorderRadius.circular(3.0),
            ),
            child:Text('显示全部',style:TextStyle(color:Colors.teal[800]))
          )
        ]
    );
  } 
}
//定义类
class Models{
  final String title;
  final String address;
  final String img;
  final String mark;
  Models({
    this.title,
    this.address,
    this.img,
    this.mark,
  });
  factory Models.formJson(Map<String,dynamic> json){
    return Models(
      title:json['title'] as String,
      address:json['address'] as String,
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
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美",'roomfeatures':"整套房间","price":"216","evaluation":'23',"img":"https://z1.muscache.cn/im/pictures/7bf9c0ef-3e6a-4e74-b9b4-3653fafeb02e.jpg?aki_policy=large"},
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"梵溪 故宫旁 日式庭院 禅意独卫卧室｢松庐·北京｣",'roomfeatures':"整套房间","price":"216","evaluation":'23','img':"https://z1.muscache.cn/im/pictures/281e1af2-55c3-4e22-8db0-6e94211fc7f7.jpg?aki_policy=large"},
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"利欧的独立地铁口公寓",'roomfeatures':"整套房间","price":"216","evaluation":'23','img':"https://z1.muscache.cn/im/pictures/9a08870e-a7f3-4c47-b0bd-0374d9e4f08c.jpg?aki_policy=large"},
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"6号线地铁口Loft北京像素的独立房间",'roomfeatures':"整套房间","price":"216","evaluation":'23','img':"https://z1.muscache.cn/im/pictures/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg?aki_policy=large"},
  ];
  // Future _getDataInfo() async{
  //   final url=Uri.http('10.0.2.2:8081','/home',{'mark':'春季特惠房间','address':widget.mark});
  //   final result=await http.get(url);
  //   setState((){
  //     data=json.decode(result.body).toList();
  //   });
  // }
  // @override
  // void initState(){
  //   super.initState();
  //   _getDataInfo();
  // }
  @override
  Widget build(BuildContext context){
    if (data != null ) {
        return new Container(
          height:390.0,
          child:Wrap(
            children:data.map((item){
                return GetDataSpecialofferRender(title:item['title'],address:item['address'],mark:item['mark'],img:item['img'],roomfeatures:item['roomfeatures'],local:item['local'],price:item['price']);
              }).toList()
          ),
          // child:GridView.count(
          //     crossAxisCount:2,
          //     children:data.map((item){
          //       return GetDataSpecialofferRender(title:item['title'],address:item['address'],mark:item['mark'],img:item['img']);
          //       //Models model = Models.formJson(item); 
          //       //return GetDataSpecialofferRender(title:model.title,address:model.address,mark:model.mark,img:model.img);
          //     }).toList()
          // )
        );
    }else{
      return new Container(
          child:Text('暂无数据')
        );
    }
  }
}
