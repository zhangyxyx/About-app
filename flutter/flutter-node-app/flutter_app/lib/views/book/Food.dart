/*
INTRO:美食
DATA:book
 */
import 'package:flutter/material.dart';
import 'model.dart' show ModelViewContainer;
import 'model.dart' show BookModelDataRender;

class FoodView extends StatefulWidget {
  FoodView({Key key}):super(key:key);
  @override
  _FoodState createState() => new _FoodState();
}
//民宿
class _FoodState extends State<FoodView>  {//State<ListingView>
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
                  new Text('咖啡店',style:TextStyle(fontSize:20.0)),
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
                  new Text('甜品',style:TextStyle(fontSize:20.0)),
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
                  new Text('日料',style:TextStyle(fontSize:20.0)),
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
                        new ModelViewContainer(title:'',content:'酒吧',mark:'',img:'images/1-1.png'),
                        new ModelViewContainer(title:'',content:'粉面馆',mark:'',img:'images/1-2.png'),
                        new ModelViewContainer(title:'',content:'西餐',mark:'',img:'images/1-3.png'),
                        new ModelViewContainer(title:'',content:'海鲜',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'中餐厅',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'火锅',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'烧烤烤肉',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'老店',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'家有萌宠',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'街边美食',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'特色美食',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'网红店',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'下午茶',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'川菜',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'超赞视野',mark:'',img:'images/1-4.png'),
                        new ModelViewContainer(title:'',content:'Brunch',mark:'',img:'images/1-4.png'),
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

//咖啡店
class ListingView1 extends StatefulWidget{
  @override
  ListingView11 createState()=>ListingView11();
}
class ListingView11 extends State<ListingView1>{
  Models models;
  List data=[
    {'content':"Yeah✌️～给仙女食用的迷你汉堡Get☑️","city":"上海","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-1.jpg",},
    {'content':"百吃不腻的Pizza Express甜品更出彩","city":"上海","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-2.jpg",},
    {'content':"因为一整面的磁带墙，而喜欢上的一间咖啡馆。","city":"上海","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-3.jpg",},
    {'content':"皖南婉约派羊肉，鲜香炸裂","city":"黄山","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-4.jpg",},
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
//甜品
class ListingView2 extends StatefulWidget{
  @override
  ListingView22 createState()=>ListingView22();
}
class ListingView22 extends State<ListingView2>{
  Models models;
  List data=[
    {'content':"生意爆棚的丽丰 一定能满足你花心的胃","city":"吉隆坡","belong":"甜品","mark":"美食",'imagesrc':"images/F-2-1.jpg",},
    {'content':"瑞妍的家，关于初恋的咖啡馆","city":"济州","belong":"甜品","mark":"美食",'imagesrc':"images/F-2-2.jpg",},
    {'content':"品尝Tsumon女将的私家酒单和甜品","city":"福冈","belong":"甜品","mark":"美食",'imagesrc':"images/F-2-3.jpg",},
    {'content':"茨廠街十字路口人來又人往，這家涼茶鋪卻十年如一日","city":"吉隆坡","belong":"甜品","mark":"美食",'imagesrc':"images/F-2-4.jpg",},
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

//日料
class ListingView3 extends StatefulWidget{
  @override
  ListingView33 createState()=>ListingView33();
}
class ListingView33 extends State<ListingView3>{
  Models models;
  List data=[
    {'content':"传奇的米其林三星早餐，在京都","city":"成都","belong":"日料","mark":"美食",'imagesrc':"images/F-3-1.jpg",},
    {'content':"结わえる，售卖有机美食的日式饭堂","city":"成都","belong":"日料","mark":"美食",'imagesrc':"images/F-3-2.jpg",},
    {'content':"啊！这就是二次元吃咖喱猪扒饭的画面","city":"成都","belong":"日料","mark":"美食",'imagesrc':"images/F-3-3.jpg",},
    {'content':"魔都日料独门绝技之“隐山”的青花鱼刺身","city":"新加坡","belong":"日料","mark":"美食",'imagesrc':"images/F-3-4.jpg",},
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
    {'content':"Yeah✌️～给仙女食用的迷你汉堡Get☑️","city":"上海","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-1.jpg",},
    {'content':"百吃不腻的Pizza Express甜品更出彩","city":"上海","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-2.jpg",},
    {'content':"因为一整面的磁带墙，而喜欢上的一间咖啡馆。","city":"上海","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-3.jpg",},
    {'content':"皖南婉约派羊肉，鲜香炸裂","city":"黄山","belong":"咖啡店","mark":"美食",'imagesrc':"images/F-1-4.jpg",},
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
