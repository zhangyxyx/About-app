/*
INTRO:心愿单首页
DATA:heart
 */
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Heartlist.dart' show Heartlist;


class Hearthome extends StatefulWidget{
  @override
  _Hearthome createState()=>_Hearthome();
}
class _Hearthome extends State<Hearthome>{
  //Models models;
  List data=[{'city':'北京', 'totalArrF': '30', 'totalArrT': '18'}, {'city': '上海', 'totalArrF': '12', 'totalArrT': '0'}];
  // Future _getDataInfo() async{
  //   final url=Uri.http('10.0.2.2:8081','/heart',{'mark':"home"});
  //   final result=await http.get(url);
  //   setState((){
  //     data=json.decode(result.body.toString()).toList();
  //     print(json.decode(result.body.toString()).toList());
  //   });
  // }
  @override
  // void initState(){
  //   super.initState(); 
  //   //_getDataInfo();
  // }
  @override
  Widget build(BuildContext context){
    if(data!=null){
        return new Container(
              height:800.0,
              padding:EdgeInsets.all(10.0),
              child:Column(
                  children:data.map((item){
                    return GestureDetector(//手势里面有很多内容，现在选取一个Tap
                        onTap:(){
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new Heartlist()),
                          );
                        },
                        child:Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image.asset('images/Heart1.jpg'),

                              Row(
                                children:[
                                  Text(item['city'],style:TextStyle(color:Colors.black)),
                                  Container(
                                    margin:EdgeInsets.only(left:10.0),
                                    child:Text('2个房源',style:TextStyle(color:Colors.black,fontSize:13.0)),
                                  )
                                  
                                ]
                              )
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

