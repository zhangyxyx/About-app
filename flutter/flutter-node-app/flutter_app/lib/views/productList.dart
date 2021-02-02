/*
INTRO:商品列表
DATA:
 */
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new ListView(
      children:[
        Text('全部故事'),
        Column(
          children:choices.map((Choice choice){
            return new Container(
              height:50.0,
              padding:const EdgeInsets.all(10.0),
              child:new Row(
                children:[
                  Expanded(
                    child:Text(
                      choice.title,
                      style:TextStyle(
                        color:Colors.black,
                        fontSize:12.0,

                      )
                    ),
                    flex:1,
                  ),
                  Expanded(
                    child:Container(
                      width:10.0,
                      height:20.0,
                      alignment:Alignment.centerRight,
                      child:Icon(choice.mark)
                    ),
                    flex:4,
                  ),
                ]
              )
            ); 
          }).toList()
        )
      
      ]
    );
  
  }
}
class Choice{
  const Choice({this.title,this.icon,this.mark});
  final String title;
  final IconData icon;
  final IconData mark;
}
const List<Choice> choices=const <Choice>[
  const Choice(title:'通知',
  mark:Icons.add_alert
  //icon:Icons.directions_car
  ),
  const Choice(title:'出差？',
  mark:Icons.arrow_forward_ios
  //icon:Icons.directions_car
  ),
  const Choice(title:'订单中心',
  mark:Icons.public
  //icon:Icons.directions_car
  ),
  const Choice(title:'行程',
  mark:Icons.business_center
  //icon:Icons.directions_car
  ),
  const Choice(title:'旅行基金和礼金券',
  mark:Icons.movie_creation
  //icon:Icons.directions_car
  ),
  const Choice(title:'邀请好友',
  mark:Icons.card_giftcard
  //icon:Icons.directions_car
  ),
  const Choice(title:'邀请房东',
  mark:Icons.card_giftcard
  //icon:Icons.directions_car
  ),
  const Choice(title:'了解如何出租',
  mark:Icons.location_city
  //icon:Icons.directions_car
  ),
  const Choice(title:'发布房源',
  mark:Icons.location_city
  //icon:Icons.directions_car
  ),
  const Choice(title:'开展体验',
  mark:Icons.beach_access
  //icon:Icons.directions_car
  ),
  const Choice(title:'设置',
  mark:Icons.settings
  //icon:Icons.directions_car
  ),
  const Choice(title:'获取帮助',
  mark:Icons.assistant_photo
  //icon:Icons.directions_car
  ),
  const Choice(title:'向我们反馈',
  mark:Icons.send
  //icon:Icons.directions_car
  ),

];

