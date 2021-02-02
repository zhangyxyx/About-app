/*
INTRO:春季出行灵感集
DATA:本地
 */
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Inspirations extends StatelessWidget{
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
                          '春季出行灵感集',
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
    {'title':'在新绿与暖风中，住进江南山水画境','mark':'踏青推荐目的地','content':'江南春日的理想生活，是漫步宏村青石板古道，品尝西湖时令春蔬，居于莫干山的清幽之中。','img':'https://z1.muscache.cn/im/pictures/39932077-6cca-423b-b80d-05b6d66648a3.jpg?aki_policy=large'},
    {'title':'在春天里闻花香，听风来，晒太阳','mark':'国内赏花目的地推荐','content':'别让春暖花开成为只在照片上见过的风景。我们精选了 6 个国内赏花地，在这里你可以扑向春天，沉浸在大自然间，感受生机。','img':'https://z1.muscache.cn/im/pictures/3b14f0f8-77aa-4b79-af2b-7a631f91a845.jpg?aki_policy=large'},
    {'title':'避开人潮，来九州探索自然乐趣','mark':'赏樱目的地推荐','content':'这里有悠久的历史，也有电影中的乡野景色。泡温泉，赏樱花，亲近自然，放松一下吧。','img':'https://z1.muscache.cn/im/pictures/1e4b4764-05d1-4425-9e26-3279a62f5c00.jpg?aki_policy=large'},
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
      width:200.0,
      height:200.0,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Stack(
            children:<Widget>[
              Image(
                image: NetworkImage(img),width:200.0,height:100.0,fit:BoxFit.cover
              ),
              Positioned(
                right:10.0,
                child:Icon(Icons.hearing,color:Colors.white)
              ),
            ]
          ),
          Text(mark,textAlign:TextAlign.end,style:TextStyle(fontSize:12.0),maxLines:1),
          Text(title,style:TextStyle(fontSize:16.0,),maxLines:1),
          Text(content,style:TextStyle(fontSize:12.0,),maxLines: 2,overflow:TextOverflow.ellipsis),
        ]
      )
    );
  }

}