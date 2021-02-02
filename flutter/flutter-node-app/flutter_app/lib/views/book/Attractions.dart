/*
INTRO:景点
DATA:book
 */
import 'package:flutter/material.dart';
import 'model.dart' show ModelViewContainer;
import 'model.dart' show BookModelDataRender;


class AttractionsView extends StatefulWidget {
  AttractionsView({Key key}):super(key:key);
  @override
  _AttractionsState createState() => new _AttractionsState();
}
//民宿
class _AttractionsState extends State<AttractionsView>  {//State<ListingView>
  @override
  Widget build(BuildContext context){ 
    return new Scaffold(
      body:new Container(
       child:new ListView(
          children:[
            new Container(
              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  new Text('街区',style:TextStyle(fontSize:20.0)),
                  new ListingView1(),
                  Container(
                    height:50.0,
                    decoration: new BoxDecoration(
                     border:new Border.all(color:Colors.teal[800]),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[Text('显示更多故事',style:TextStyle(color:Colors.teal[800],fontSize:16.0))]
                    )
                  )
                ]
              ),
            ),
            new Container(
              child:new Column(
                //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  new Text('建筑',style:TextStyle(fontSize:20.0)),
                  new ListingView2(),
                  Container(
                    height:50.0,
                    decoration: new BoxDecoration(
                     border:new Border.all(color:Colors.teal[800]),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[Text('显示更多故事',style:TextStyle(color:Colors.teal[800],fontSize:16.0))]
                    )
                  )
                ]
              ),
            ),
            new Container(
              child:new Column(
                //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  new Text('寺庙',style:TextStyle(fontSize:20.0)),
                  new ListingView3(),
                  Container(
                    height:50.0,
                    decoration: new BoxDecoration(
                     border:new Border.all(color:Colors.teal[800]),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[Text('显示更多故事',style:TextStyle(color:Colors.teal[800],fontSize:16.0))]
                    )
                  )
                ]
              ),
            ),
            new Container(
              height:240,
              child:new Column(
                //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  new Row(
                    children:[
                      new Text('更多标签',style:TextStyle(fontSize:20.0)),
                    ]
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(vertical: 20.0),
                    height:160.0,
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        new ModelViewContainer(title:'',content:'复古',mark:'',img:'images/1-1.png'),
                        new ModelViewContainer(title:'',content:'温馨小家',mark:'',img:'images/1-2.png'),
                        new ModelViewContainer(title:'',content:'清新',mark:'',img:'images/1-3.png'),
                        new ModelViewContainer(title:'',content:'亲近自然',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'别墅',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'我家有挺远',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'INS风',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'我家有泳池',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'家有萌宠',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'中国风',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'老宅',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'我家有花园',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'Loft',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'天台楼阁',mark:'',img:'images/1-4.png'),
                      ],
                    ),
                ),
                ]
              ),
            ),
            new Container(
              child:new Column(
                //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  new Text('全部故事',style:TextStyle(fontSize:20.0)),
                  new ListingView4(),
                  
                ]
              ),
            ),
          ]
        )
      )
    );
  }
}
//定义类
class Models{
  final String content;
  final String city;
  final String belong;
  final String mark;
  final String imagesrc;
  Models({
    this.content,
    this.city,
    this.belong,
    this.mark,
    this.imagesrc
  });
  factory Models.formJson(Map<String,dynamic> json){
    return Models(
      content:json['content'] as String,
      city:json['city'] as String,
      belong:json['belong'] as String,
      mark:json['mark'] as String,
      imagesrc:json['imagesrc'] as String
    );
  }
}

//街区
class ListingView1 extends StatefulWidget{
  @override
  ListingView11 createState()=>ListingView11();
}
class ListingView11 extends State<ListingView1>{
  Models models;
  List data=[
    {'content':"北京的四季出行","city":"北京","belong":"街区","mark":"景点",'imagesrc':"images/A-1-1.jpg",},
    {'content':"两江四湖️","city":"桂林","belong":"街区","mark":"景点",'imagesrc':"images/A-1-2.jpg",},
    {'content':"刚到圣保罗就遇到大游行","city":"圣保罗","belong":"街区","mark":"景点",'imagesrc':"images/A-1-3.jpg",},
    {'content':"北京下一个798艺术区，探秘即将走进历史的首钢废墟遗址","city":"北京","belong":"街区","mark":"景点",'imagesrc':"images/A-1-4.jpg",},
  ];
//   Future _getUserInfo() async{
//       final uri =  Uri.http('10.0.2.2:8081', '/book', {'mark':'房源','belong':"有趣房东"});
//       final result=await http.get(uri);
//       setState((){
//         data=json.decode(result.body).toList();
//       });
//   }
//  @override
//  void initState(){
//    super.initState();
//    _getUserInfo();
//  }
 @override
  Widget build(BuildContext context){
    if (data != null ) {
        return new Container(
          height:400.0,
          child:Wrap(
            children:data.map((item){
                return BookModelDataRender(content:item['content'],city:item['city'],mark:item['mark'],belong:item['belong'],imagesrc:item['imagesrc']);
              }).toList()
          ),
          // child:GridView.count(
          //     crossAxisCount:2,
          //     children:data.map((item){
          //       return GetDataSpecialofferRender(title:item['title'],address:item['address'],mark:item['mark'],img:item['img'],roomfeatures:item['roomfeatures'],local:item['local'],price:item['price']);

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
//建筑
class ListingView2 extends StatefulWidget{
  @override
  ListingView22 createState()=>ListingView22();
}
class ListingView22 extends State<ListingView2>{
  Models models;
  List data=[
    {'content':"Oculus｜曾经的废墟上屹立而起的白色飞鸽","city":"纽约","belong":"建筑","mark":"景点",'imagesrc':"images/A-2-1.jpg",},
    {'content':"奥赛博物馆——火车站的华丽变身","city":"巴黎","belong":"建筑","mark":"景点",'imagesrc':"images/A-2-2.jpg",},
    {'content':"穿越进韩国旧时代，每几步就是一个韩剧拍摄地","city":"首尔","belong":"建筑","mark":"景点",'imagesrc':"images/A-2-3.jpg",},
    {'content':"张爱玲和胡兰成的“美丽园","city":"上海","belong":"有趣房东","mark":"景点",'imagesrc':"images/A-2-4.jpg",},
  ];
//   Future _getUserInfo() async{
//       final uri =  Uri.http('10.0.2.2:8081', '/book', {'mark':'房源','belong':"超赞视野"});
//       final result=await http.get(uri);
//       setState((){
//         data=json.decode(result.body).toList();
//       });
//   }
//  @override
//  void initState(){
//    super.initState();
//    _getUserInfo();
//  }
 @override
  Widget build(BuildContext context){
       return Wrap(
         children:data.map((item){
            //Models model = Models.formJson(item);
            return BookModelDataRender(content:item['content'],mark:item['mark'],belong:item['belong'],imagesrc:item['imagesrc']);
          }).toList()
      );
  }
}

//寺庙
class ListingView3 extends StatefulWidget{
  @override
  ListingView33 createState()=>ListingView33();
}
class ListingView33 extends State<ListingView3>{
  Models models;
  List data=[
    {'content':"穿汉服走进法隆寺的斑驳土墙，一秒钟重回大唐","city":"成都","belong":"寺庙","mark":"景点",'imagesrc':"images/A-3-1.jpg",},
    {'content':"别去人挤人的大皇宫了，到旁边的卧佛寺不好吗","city":"成都","belong":"寺庙","mark":"景点",'imagesrc':"images/A-3-2.jpg",},
    {'content':"清迈契迪龙寺菩提花开","city":"成都","belong":"寺庙","mark":"景点",'imagesrc':"images/A-3-3.jpg",},
    {'content':"成都最美寺院，在红墙绿树里找到白兔和珠颈斑鸠","city":"新加坡","belong":"寺庙","mark":"景点",'imagesrc':"images/A-3-4.jpg",},
  ];
//   Future _getUserInfo() async{
//       final uri =  Uri.http('10.0.2.2:8081', '/book', {'mark':'房源','belong':"北欧极简"});
//       final result=await http.get(uri);
//       setState((){
//         data=json.decode(result.body).toList();
//       });
//   }
//  @override
//  void initState(){
//    super.initState();
//    _getUserInfo();
//  }
 @override
  Widget build(BuildContext context){
       return Wrap(
         children:data.map((item){
            //Models model = Models.formJson(item);
            return BookModelDataRender(content:item['content'],mark:item['mark'],belong:item['belong'],imagesrc:item['imagesrc']);
          }).toList()
      );
  }
}

//全部故事
class ListingView4 extends StatefulWidget{
  @override
  ListingView44 createState()=>ListingView44();
}
class ListingView44 extends State<ListingView4>{
  Models models;
  List data=[
    {'content':"北京的四季出行","city":"北京","belong":"街区","mark":"景点",'imagesrc':"images/A-1-1.jpg",},
    {'content':"两江四湖️","city":"桂林","belong":"街区","mark":"景点",'imagesrc':"images/A-1-2.jpg",},
    {'content':"刚到圣保罗就遇到大游行","city":"圣保罗","belong":"街区","mark":"景点",'imagesrc':"images/A-1-3.jpg",},
    {'content':"北京下一个798艺术区，探秘即将走进历史的首钢废墟遗址","city":"北京","belong":"街区","mark":"景点",'imagesrc':"images/A-1-4.jpg",},
  ];
//   Future _getUserInfo() async{
//       final uri =  Uri.http('10.0.2.2:8081', '/book', {'mark':'房源','belong':"all"});
//       final result=await http.get(uri);
//       setState((){
//         data=json.decode(result.body).toList();
//       });
//   }
//  @override
//  void initState(){
//    super.initState();
//    _getUserInfo();
//  }
 @override
  Widget build(BuildContext context){
    print(data);
       return Wrap(
         children:data.map((item){
            //Models model = Models.formJson(item);
            //print(model);
            return BookModelDataRender(content:item['content'],mark:item['mark'],belong:item['belong'],imagesrc:item['imagesrc']);
          }).toList()
      );
  }
}



