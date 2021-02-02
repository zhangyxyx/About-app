/*
INTRO:灵感
DATA:book
 */
import 'package:flutter/material.dart';
import 'model.dart' show ModelViewContainer;
import 'model.dart' show BookModelDataRender;

class CityView extends StatefulWidget {
  CityView({Key key}):super(key:key);
  @override
  _CityState createState() => new _CityState();
}

class _CityState extends State<CityView>  {//State<ListingView>
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
                  new Text('节庆活动',style:TextStyle(fontSize:20.0)),
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
                  new Text('摄影',style:TextStyle(fontSize:20.0)),
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
                  new Text('徒步',style:TextStyle(fontSize:20.0)),
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

//节庆活动
class ListingView1 extends StatefulWidget{
  @override
  ListingView11 createState()=>ListingView11();
}
class ListingView11 extends State<ListingView1>{
  Models models;
  List data=[
    {'content':"香港有个好莱坞，麦兜抢包山","city":"香港","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-1.jpg",},
    {'content':"来巴德岗，和湿婆一起跳舞","city":"尼泊尔","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-2.jpg",},
    {'content':"澎湖元宵乞龟，春节晚间不跑夜店，专跑庙宇！","city":"台湾","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-3.jpg",},
    {'content':"十胜川彩凛华白鸟节","city":"日本","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-4.jpg",},
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
//摄影
class ListingView2 extends StatefulWidget{
  @override
  ListingView22 createState()=>ListingView22();
}
class ListingView22 extends State<ListingView2>{
  Models models;
  List data=[
    {'content':"我们的婚纱照，一定是全冰岛最美的","city":"冰岛","belong":"摄影","mark":"灵感",'imagesrc':"images/P-2-1.jpg",},
    {'content':"花束与背景的故事，鹿牌暖瓶厂废弃厂房","city":"北京","belong":"摄影","mark":"灵感",'imagesrc':"images/P-2-2.jpg",},
    {'content':"重庆到达航班——高空选座拍摄指南","city":"重庆","belong":"摄影","mark":"灵感",'imagesrc':"images/P-2-3.jpg",},
    {'content':"为了在这个沙漠植物馆拍合照，我们把深圳的朋友骗来了","city":"上海","belong":"有趣房东","mark":"灵感",'imagesrc':"images/P-2-4.jpg",},
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

//徒步
class ListingView3 extends StatefulWidget{
  @override
  ListingView33 createState()=>ListingView33();
}
class ListingView33 extends State<ListingView3>{
  Models models;
  List data=[
    {'content':"最强台风天暴走花莲东海岸","city":"花莲","belong":"徒步","mark":"灵感",'imagesrc':"images/F-1-1.jpg",},
    {'content':"全港最美徒步路线，要不要走一遭？","city":"香港","belong":"徒步","mark":"灵感",'imagesrc':"images/F-1-2.jpg",},
    {'content':"杭州最美山线，江湖齐赏，郎当十里行","city":"杭州","belong":"徒步","mark":"灵感",'imagesrc':"images/F-1-3.jpg",},
    {'content':"屋久岛 | 去看看你的蛙儿子仰望的那棵千年神树吧","city":"日本","belong":"徒步","mark":"灵感",'imagesrc':"images/F-1-4.jpg",},
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
    {'content':"香港有个好莱坞，麦兜抢包山","city":"香港","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-1.jpg",},
    {'content':"来巴德岗，和湿婆一起跳舞","city":"尼泊尔","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-2.jpg",},
    {'content':"澎湖元宵乞龟，春节晚间不跑夜店，专跑庙宇！","city":"台湾","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-3.jpg",},
    {'content':"十胜川彩凛华白鸟节","city":"日本","belong":"节庆活动","mark":"灵感",'imagesrc':"images/P-1-4.jpg",},
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

