/*
INTRO:详细
DATA:本地
 */
import 'package:flutter/material.dart';
import '../heart/Heartlist.dart' show Heartlist;

class Detail extends StatefulWidget{
  _Detail createState()=>_Detail();
}
class _Detail extends State<Detail>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        body:ListView(
          padding:EdgeInsets.only(top:30.0,left:15.0,right:15.0),
          children: <Widget>[
            Stack(
              children:[
                new Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: new GestureDetector(//手势里面有很多内容，现在选取一个Tap
                      onTap:(){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   new MaterialPageRoute(builder: (context) => new Heartlist()),
                        // );
                      },
                      child:Container(
                        margin:EdgeInsets.only(top:20.0),
                        child:Icon(Icons.arrow_back)
                      ),
                  ),
                ),
              ]
            ),
            Image.asset('images/Heart1.jpg'),
            Row(
              children:[Text('北京.整套公寓',style:TextStyle(color:Colors.red))]
            ),
            Row(
              children:[
                Align(
                  alignment: Alignment.topLeft,
                  child:Container(
                    width:240.0,
                    child:Text('四月特惠 现代北欧格调的整套房子/可代开发票/近三里屯工体')
                  ) 
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child:Container(
                    width:50.0,
                    child:Icon(Icons.sentiment_very_satisfied)
                  ) 
                ),
                
              ]
            ),
            
           
            //Text('房源详细')
            // Container(
            //   height:200.0,
            //   child: Stack(
            //     children:[
            //       Image.asset('images/Heart1.jpg'),
            //       Positioned(
            //         child:Row(
            //           children:[
            //             Icon(Icons.search),
            //             Icon(Icons.share),
            //             Icon(Icons.favorite_border),
            //           ] 
            //         ),
            //       )
            //     ]
            //   ),
            // ),
            // Text('北京.整套公寓'),
            // Container(
            //   height:200.0,
            //   child:Row(
            //     children:[
            //       Text('【四月特惠】现代北欧格调的整套房子/可代开发票/近三里屯太古里/团结湖地铁站/工体'),
            //       Image.asset('images/Heart1.jpg'),
            //     ]
            //   ),
            // ),
            // Container(
            //   height:50.0,
            //   child: Row(
            //     children:[
            //       Text('59条评论'),
            //       Text('可做饭'),
            //       Text('自助入住'),
            //       Text('付费停车')
            //     ]
            //   ),
            // ),
            // // GridView.count(
            // //   crossAxisCount:1,
            // //   children:[
            // //     Text('4位房客'),
            // //     Text('2间卧室'),
            // //     Text('2张床'),
            // //     Text('1间卫生间')
            // //   ]
            // // ),
            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children:[
            //     Text('卧室1 一张大床 1张沙发'),
            //     Text('卧室2 一张双人床'),
            //   ]
            // ),
            // ListView(
            //   children:[
            //     Row(children:[Icon(Icons.account_balance),Text('整个房源 独自使用整个空间')]),
            //     Row(children:[Icon(Icons.access_time),Text('入住与退房 15:00后/12:00')]),
            //     Row(children:[Icon(Icons.vpn_key),Text('自主入住 通过智能门锁自主入住')]),
            //     Row(children:[Icon(Icons.date_range),Text('可定状态 最少一晚')]),
            //   ]
            // )
            
          ],
        )
      )
    );
  }
}

  