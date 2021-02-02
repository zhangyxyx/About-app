/*
INTRO:探店
DATA:book
 */
import 'package:flutter/material.dart';
import 'model.dart' show ModelViewContainer;
import 'model.dart' show BookModelDataRender;

class ProbeShopView extends StatefulWidget {
  ProbeShopView({Key key}):super(key:key);
  @override
  _ProbeShopState createState() => new _ProbeShopState();
}

class _ProbeShopState extends State<ProbeShopView>  {//State<ListingView>
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
                  new Text('书店',style:TextStyle(fontSize:20.0)),
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
                  new Text('复古店',style:TextStyle(fontSize:20.0)),
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
                  new Text('家具生活馆',style:TextStyle(fontSize:20.0)),
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
                        new ModelViewContainer(title:'',content:'时尚购物店',mark:'',img:'images/1-1.png'),
                        new ModelViewContainer(title:'',content:'杂货店',mark:'',img:'images/1-2.png'),
                        new ModelViewContainer(title:'',content:'创意设计店',mark:'',img:'images/1-3.png'),
                        new ModelViewContainer(title:'',content:'工艺手作店',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'网红点',mark:'',img:'images/1-4.png'),
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

//书店
class ListingView1 extends StatefulWidget{
  @override
  ListingView11 createState()=>ListingView11();
}
class ListingView11 extends State<ListingView1>{
  Models models;
  List data=[
    {'content':"Daunt books：旅行主题书店却成为伦敦最美书店","city":"伦敦","belong":"书店","mark":"探店",'imagesrc':"images/P-1-1.jpg",},
    {'content':"查令十字街的百年书店，小心别迷了路","city":"伦敦","belong":"书店","mark":"探店",'imagesrc':"images/P-1-2.jpg",},
    {'content':"追忆电影《诺丁山》的故事，从这家小书店开始","city":"英国","belong":"书店","mark":"探店",'imagesrc':"images/P-1-3.jpg",},
    {'content':"伦敦书评书店：吐槽爱好者的天堂","city":"伦敦","belong":"书店","mark":"探店",'imagesrc':"images/P-1-4.jpg",},
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
//复古店
class ListingView2 extends StatefulWidget{
  @override
  ListingView22 createState()=>ListingView22();
}
class ListingView22 extends State<ListingView2>{
  Models models;
  List data=[
    {'content':"曼谷，今天晚上住在酒吧里！","city":"曼谷","belong":"复古店","mark":"探店",'imagesrc':"images/P-2-1.jpg",},
    {'content':"在一间有格调的书吧闻着书香味做一晚书虫","city":"广州","belong":"复古店","mark":"探店",'imagesrc':"images/P-2-2.jpg",},
    {'content':"88岁的老爷爷，坚守着北京城最后的修笔店。","city":"北京","belong":"复古店","mark":"探店",'imagesrc':"images/P-2-3.jpg",},
    {'content':"假如没时间拜访世界，就让世界来拜访我们","city":"上海","belong":"复古店","mark":"探店",'imagesrc':"images/P-2-4.jpg",},
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

//家具生活馆
class ListingView3 extends StatefulWidget{
  @override
  ListingView33 createState()=>ListingView33();
}
class ListingView33 extends State<ListingView3>{
  Models models;
  List data=[
    {'content':"曼谷，今天晚上住在酒吧里！","city":"曼谷","belong":"家具生活馆","mark":"探店",'imagesrc':"images/P-2-1.jpg",},
    {'content':"在一间有格调的书吧闻着书香味做一晚书虫","city":"广州","belong":"家具生活馆","mark":"探店",'imagesrc':"images/P-2-2.jpg",},
    {'content':"88岁的老爷爷，坚守着北京城最后的修笔店。","city":"北京","belong":"家具生活馆","mark":"探店",'imagesrc':"images/P-2-3.jpg",},
    {'content':"假如没时间拜访世界，就让世界来拜访我们","city":"上海","belong":"家具生活馆","mark":"探店",'imagesrc':"images/P-2-4.jpg",},
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
    {'content':"Daunt books：旅行主题书店却成为伦敦最美书店","city":"伦敦","belong":"书店","mark":"探店",'imagesrc':"images/P-1-1.jpg",},
    {'content':"查令十字街的百年书店，小心别迷了路","city":"伦敦","belong":"书店","mark":"探店",'imagesrc':"images/P-1-2.jpg",},
    {'content':"追忆电影《诺丁山》的故事，从这家小书店开始","city":"英国","belong":"书店","mark":"探店",'imagesrc':"images/P-1-3.jpg",},
    {'content':"伦敦书评书店：吐槽爱好者的天堂","city":"伦敦","belong":"书店","mark":"探店",'imagesrc':"images/P-1-4.jpg",},
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
