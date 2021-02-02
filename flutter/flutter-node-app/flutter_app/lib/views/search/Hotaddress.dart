/*
INTRO:热门目的地
DATA:home
 */
import 'package:flutter/material.dart';
import 'search-model.dart' show GetDataSpecialofferRender;
import 'package:http/http.dart' as http;
import 'dart:convert';

class Hotaddress extends StatelessWidget{
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
                          '热门目的地',
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
                  new SetCity(),
                ]
              )
            )
        ]
      )
    );
  }
}
//设置城市
class SetCity extends StatefulWidget{
  //SetCity({Key key,this.mark}):super(key:key);
  @override
  _SetCity createState()=>_SetCity();
}
class _SetCity extends State<SetCity>{
  var mark=0;
  @override  
  List <String> items=['北京','上海','成都','西安','杭州','南京','广州','武汉'];
  Widget build(BuildContext context){
      return Column(    
          children:[
            Container(
            height:50.0,
            alignment:Alignment.centerLeft ,
            padding:EdgeInsets.only(top:5.0,bottom:10.0),
            child:ListView.builder(
              shrinkWrap: true,
              scrollDirection:Axis.horizontal,
              itemCount:items.length,
              itemBuilder:(BuildContext context,int index){
                String item=items[index];
                return new GestureDetector(//手势里面有很多内容，现在选取一个Tap
                    onTap:(){setState(()=>{mark=index});},
                    child:Container(
                      color:mark==index?Colors.teal[800]:Colors.white,
                      alignment:Alignment.center,
                      margin: EdgeInsets.only(right:5.0),      
                      width:55.0,
                      child:Text(item,style:TextStyle(color:mark==index?Colors.white:Colors.black,fontSize:12.0)),
                      foregroundDecoration: new BoxDecoration(
                        border: new Border.all(color: Colors.black26, width: 1.0, style: BorderStyle.solid),
                        //boxShadow:[BoxShadow(color: Colors.black26)]
                      ),
                    )
                );
              },
            )
          ),
          new ListGetData(mark:items.elementAt(mark)),//.elementAt(testList6.length - 1)
          new Container(
            width:300.0,
            height:40.0,
            alignment:Alignment.center,
            foregroundDecoration:new BoxDecoration(
              border:new Border.all(color:Colors.teal[800]),
              borderRadius:BorderRadius.circular(3.0),
            ),
            child:Text('查看更多${items.elementAt(mark)}房源',style:TextStyle(color:Colors.teal[800]))
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
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"【黑白灰性冷淡LOFT】苏州桥人大理工民族体育清华北大中关村免费台球健身房篮球场电影院可做饭活动丰富",'roomfeatures':"整套房间","price":"216","evaluation":'23',"img":"https://z1.muscache.cn/4ea/air/v2/pictures/7051998d-4b7b-4a6e-834a-b5951392775e.jpg?t=c:w3-h2-go,r:w700,e:fjpg-c70"},
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"北京中心南锣鼓巷内中央戏剧学院旁可以撸兔子带大露台的小屋!",'roomfeatures':"整套房间","price":"216","evaluation":'23','img':"https://z1.muscache.cn/im/pictures/1cd6425d-6494-482a-a4bd-f61dd0f98d03.jpg?aki_policy=xx_large"},
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"Stey｢胡同里的设计酒店Studio｣步行可达故宫&王府井",'roomfeatures':"整套房间","price":"216","evaluation":'23','img':"https://z1.muscache.cn/im/pictures/b9a5feae-b7ce-4aee-b4bb-7416bd7a8521.jpg?aki_policy=xx_large"},
    {'address':"北京","local":"国贸","mark":"春季特惠房间","title":"特惠:『沅芷澧兰』比邻故宫天安门,护城河畔高端品质公寓,200米地铁站",'roomfeatures':"整套房间","price":"216","evaluation":'23','img':"https://z1.muscache.cn/im/pictures/5e44b24d-c1dd-4046-b771-50c9f8d19ed6.jpg?aki_policy=xx_large"},
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
          height:360.0,
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
