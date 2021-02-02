/*
INTRO:文化
DATA:book
 */
import 'package:flutter/material.dart';
import 'model.dart' show ModelViewContainer;
import 'model.dart' show BookModelDataRender;

class CultureView extends StatefulWidget {
  CultureView({Key key}):super(key:key);
  @override
  _CultureState createState() => new _CultureState();
}
//民宿
class _CultureState extends State<CultureView>  {//State<ListingView>
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
                  new Text('展览',style:TextStyle(fontSize:20.0)),
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
                  new Text('艺术',style:TextStyle(fontSize:20.0)),
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
                  new Text('建筑',style:TextStyle(fontSize:20.0)),
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

//展览
class ListingView1 extends StatefulWidget{
  @override
  ListingView11 createState()=>ListingView11();
}
class ListingView11 extends State<ListingView1>{
  Models models;
  List data=[
    {'content':"你手中的咖啡杯可能是日本名家曾在此展出过的绝版之作","city":"上海","belong":"展览","mark":"文化",'imagesrc':"images/Y-1-1.jpg",},
    {'content':"这个展让你拍的照片在朋友圈C位出道","city":"北京","belong":"展览","mark":"文化",'imagesrc':"images/Y-1-2.jpg",},
    {'content':"A4美术馆，成都的地标性艺术馆","city":"成都","belong":"展览","mark":"文化",'imagesrc':"images/Y-1-3.jpg",},
    {'content':"当梵高被画上舞台，你沉醉哪一抹色彩","city":"香港","belong":"展览","mark":"文化",'imagesrc':"images/Y-1-4.jpg",},
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
//艺术
class ListingView2 extends StatefulWidget{
  @override
  ListingView22 createState()=>ListingView22();
}
class ListingView22 extends State<ListingView2>{
  Models models;
  List data=[
    {'content':"卢浮宫里的教学，才是学校该有的样子吧","city":"巴黎","belong":"艺术","mark":"文化",'imagesrc':"images/Y-2-1.jpg",},
    {'content':"隐匿在曼谷街头小巷的创意园区","city":"曼谷","belong":"艺术","mark":"文化",'imagesrc':"images/Y-2-2.jpg",},
    {'content':"曼谷不止纸醉金迷，更是艺术与文化水乳交融。","city":"曼谷","belong":"艺术","mark":"文化",'imagesrc':"images/Y-2-3.jpg",},
    {'content':"逛完市场，到城中最潮艺术馆朝圣","city":"曼谷","belong":"艺术","mark":"文化",'imagesrc':"images/Y-2-4.jpg",},
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

//建筑
class ListingView3 extends StatefulWidget{
  @override
  ListingView33 createState()=>ListingView33();
}
class ListingView33 extends State<ListingView3>{
  Models models;
  List data=[
    {'content':"Oculus｜曾经的废墟上屹立而起的白色飞鸽","city":"纽约","belong":"建筑","mark":"景点",'imagesrc':"images/A-2-1.jpg",},
    {'content':"奥赛博物馆——火车站的华丽变身","city":"巴黎","belong":"建筑","mark":"景点",'imagesrc':"images/A-2-2.jpg",},
    {'content':"穿越进韩国旧时代，每几步就是一个韩剧拍摄地","city":"首尔","belong":"建筑","mark":"景点",'imagesrc':"images/A-2-3.jpg",},
    {'content':"张爱玲和胡兰成的“美丽园","city":"上海","belong":"有趣房东","mark":"景点",'imagesrc':"images/A-2-4.jpg",},
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
    {'content':"洛杉矶，为了一部电影开始旅程| La la land","city":"洛杉矶","belong":"有趣房东","mark":"房源",'imagesrc':"images/L-1-1.jpg",},
    {'content':"幸福的故事","city":"济州","belong":"有趣房东","mark":"房源",'imagesrc':"images/L-1-2.jpg",},
    {'content':"Rafic的家中，有生活的精致和温度","city":"巴黎","belong":"有趣房东","mark":"房源",'imagesrc':"images/L-1-3.jpg",},
    {'content':"一间接待过14000名客人的民宿","city":"首尔","belong":"有趣房东","mark":"房源",'imagesrc':"images/L-1-4.jpg",},
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


// //渲染模板   
// class BookModelDataRender extends StatelessWidget{
//   BookModelDataRender({Key key, this.content,this.city,this.mark,this.belong,this.imagesrc}):super(key: key);
//   final String city;
//   final String content;
//   final String mark;
//   final String belong;
//   final String imagesrc;
//   @override
//   Widget build(BuildContext context){
//       return Container(
//         width:160,
//         height:200,
//         padding: EdgeInsets.all(5.0),
//         child:Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:[
//             Stack(
//               children:[
//                 Image.asset(imagesrc, height:100,fit:BoxFit.fitWidth),
//                 Positioned(
//                   right: 15.0,
//                   bottom: 10.0,
//                   child:Container(
//                     padding: EdgeInsets.only(left: 5.0,right:5.0,top:3.0,bottom:3.0),
//                     decoration: new BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
//                     ),
//                     child:new Text(mark,style:TextStyle(color:Colors.black)), 
//                   )
//                 ),
//               ]
//             ),
//             Padding(
//               padding:EdgeInsets.only(top:5.0,bottom:5.0),
//               child:Text(content,style:TextStyle(color:Colors.black),maxLines: 2,)
//             ),
//             Row(
//               children:[
//                 Icon(Icons.thumb_up,size:15.0),Text('399'),
//                 Icon(Icons.feedback,size:15.0),Text('22'),
//               ]
//             )
//           ]
//         )
//       );
                               
//   }
// }
