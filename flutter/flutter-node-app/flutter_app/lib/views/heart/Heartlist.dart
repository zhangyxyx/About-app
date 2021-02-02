/*
INTRO:心愿单列表
DATA:heart
 */
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../common/Detail.dart' show Detail;
import '../Heart.dart' show Heart;


class Heartlist extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:new Scaffold(
        body:new ListView(
          padding:EdgeInsets.only(top:30.0,left:15.0,right:15.0),
          children:[
            Stack(
              children:[
                new Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: new GestureDetector(//手势里面有很多内容，现在选取一个Tap
                      onTap:(){
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => new Heart()),
                        );
                      },
                      child:Container(
                        margin:EdgeInsets.only(top:20.0),
                        child:Icon(Icons.arrow_back)
                      ),
                      
                  ),
                ),
                new Align(
                  alignment: FractionalOffset.bottomRight,
                  child: Icon(Icons.tune),
                ),
                new Align(
                  alignment: FractionalOffset(1.0,0.0),
                  child: Icon(Icons.more_vert),
                ),
              ]
            ),
            Text('北京',style:TextStyle(fontSize:20.0,fontWeight:FontWeight.w600)),
            Text('任何时间.1位.仅限受邀用户'),
            Row(
              children:[
                 Container(
                  margin:EdgeInsets.only(top:10.0,bottom:10.0),
                  padding:EdgeInsets.only(top:5.0,bottom:5.0,left:10.0,right:10.0),
                  foregroundDecoration:new BoxDecoration(
                    border:new Border.all(color:Colors.teal[800]),
                    borderRadius:BorderRadius.circular(40.0),
                  ),
                  child:Wrap(
                    children:[
                      Text('邀请好友',style:TextStyle(color:Colors.teal[800])),
                      Icon(Icons.add,color:Colors.teal[800])
                    ]
                  )
                ),
              ]
            ),
           
            Text('2个可订房源',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w600)),
            Container(
              margin:EdgeInsets.only(top:20.0),
              child: Column(
                children:[
                  new GestureDetector(//手势里面有很多内容，现在选取一个Tap
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Detail()),
                      );
                    },
                    child:Container(
                      height:350.0,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Stack(
                            children:[
                              Image.asset('images/Heart2.jpg'),
                              new Positioned(
                                  top: 15.0,
                                  right: 10.0,
                                  child:Icon(Icons.favorite,color: Colors.red,), 
                              ),
                            ]
                          ),
                          Text('整套公寓.',style:TextStyle(color:Colors.red)),
                          Text('【春季特惠】比邻故宫天安门，护城河畔高端公寓',maxLines:1),
                          Text('￥430 每晚'),
                          Row(
                            children:[
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Text('30.超赞房东',style:TextStyle(color:Colors.black54,))  
                            ]
                          )
                        ]
                      )
                    )
                  ),
                  new GestureDetector(//手势里面有很多内容，现在选取一个Tap
                    onTap:(){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Detail()),
                      );
                    },
                    child:Container(
                      height:350.0,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Stack(
                            children:[
                              Image.asset('images/Heart3.jpg'),
                              new Positioned(
                                  top: 15.0,
                                  right: 10.0,
                                  child:Icon(Icons.favorite,color: Colors.red,), 
                              ),
                            ]
                          ),
                          Text('整套公寓.',style:TextStyle(color:Colors.red)),
                          Text('【四月特惠】现代北欧格调的整套房子',maxLines:1),
                          Text('￥550 每晚'),
                          Row(
                            children:[
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Icon(Icons.grade,color:Colors.teal,size:15.0),
                              Text('55.超赞房东',style:TextStyle(color:Colors.black54,))  
                            ]
                          )
                        ]
                      )
                    )
                  ),
                ]
              )
            )
           
          ]
        )
      
      )
    );
  }
  
}

class ListGetData extends StatefulWidget{
  @override
  _ListGetData createState()=>_ListGetData();
}

class _ListGetData extends State<ListGetData>{
  //Models models;
  List data;
  Future _getDataInfo() async{
    final url=Uri.http('10.0.2.2:8081','/heart',{'mark':"home"});
    final result=await http.get(url);
    setState((){
      
      data=json.decode(result.body.toString()).toList();
      print(data);
      print(json.decode(result.body.toString()).toList());
    });
  }
  @override
  void initState(){
    super.initState();
    _getDataInfo();
  }
  @override
  Widget build(BuildContext context){
    if(data!=null){
      
        return new Container(
          height:500.0,
          child:GridView.count(
              crossAxisCount:1,
              children:data.map((item){
                print(item['totalArrF']);
                return new GestureDetector(//手势里面有很多内容，现在选取一个Tap
                    onTap:(){
                      print(1);
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Detail()),
                      );
                    },
                    child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image.network('https://z1.muscache.cn/im/pictures/5e44b24d-c1dd-4046-b771-50c9f8d19ed6.jpg?aki_policy=large'),
                          Text(item['city'],style:TextStyle(color:Colors.black)),
                          Text('2个房源',style:TextStyle(color:Colors.black45,fontSize:13.0)),
                          //Text(item['totalArrT'],style:TextStyle(color:Colors.black26))
                        ]
                    ) 
                );
            }).toList()
          )
        );
    }else{
        return new Container(
          child:Text('暂无数据')
        );
    }
  }
}