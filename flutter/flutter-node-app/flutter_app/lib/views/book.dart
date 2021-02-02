/*
INTRO:故事
DATA:book
 */
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'book/Featured.dart' show FeaturedView;
import 'book/Listing.dart' show ListingView;
import 'book/Food.dart' show FoodView;
import 'book/Attractions.dart' show AttractionsView;
import 'book/Culture.dart' show CultureView;
import 'book/City.dart' show CityView;
import 'book/ProbeShop.dart' show ProbeShopView;

import 'book/model.dart' show ModelViewContainer;


/////////////////////////
//模板 Expanded
class ModelViewExpanded extends StatelessWidget{
  ModelViewExpanded({Key key, this.title,this.content,this.mark,this.img}):super(key: key);
  final String title;
  final String content;
  final String mark;
  final String img;
  @override
  Widget build(BuildContext context){
    return new Expanded(

          child:new Container(
              height:180,
              padding: EdgeInsets.all(5.0),
              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  
                  Stack(
                    children:[
                      new Image.asset(img, height:130,fit:BoxFit.fitWidth),
                      new Positioned(
                        right: 15.0,
                        bottom: 10.0,
                        child:Container(
                          padding: EdgeInsets.only(left: 5.0,right:5.0,top:3.0,bottom:3.0),
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                          ),
                          child:new Text(mark,style:TextStyle(color:Colors.black)), 
                        )
                      ),
                    ] 
                  ), 
                  new Text(content,style:new TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 12.0,)), 
                ]
              )
          )
        );
                        
  }
}

/////////////////////////
class Choice{
  const Choice({this.title,this.icon,this.mark});
  final String title;
  final IconData icon;
  final String mark;
}
const List<Choice> choices=const <Choice>[
  const Choice(title:'全部故事',
  mark:'Featured'
  //icon:Icons.directions_car
  ),
  const Choice(title:'民宿',
  mark:'Listing'
  //icon:Icons.directions_car
  ),
  const Choice(title:'美食',
  mark:'Food'
  //icon:Icons.directions_car
  ),
  const Choice(title:'景点',
  mark:'Attractions'
  //icon:Icons.directions_car
  ),
  const Choice(title:'艺术',
  mark:'Culture'
  //icon:Icons.directions_car
  ),
  const Choice(title:'灵感',
  mark:'City'
  //icon:Icons.directions_car
  ),
  const Choice(title:'探店',
  mark:'ProbeShop'
  ),

];
ChoiceCard({String titleName,String markName,Object choiceName}) {
  switch(markName){
    case 'Featured':
      return Featured(markName:markName,choiceName:choiceName);
    case 'Listing':
      return Listing(markName:markName,choiceName:choiceName);
    case 'Attractions':
      return Attractions(markName:markName,choiceName:choiceName);
    case 'Food':
      return Food(markName:markName,choiceName:choiceName);
    case 'Culture':
      return Culture(markName:markName,choiceName:choiceName);
    case 'City':
      return City(markName:markName,choiceName:choiceName);
    case 'ProbeShop':
      return ProbeShop(markName:markName,choiceName:choiceName);
  }
}

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new MaterialApp(
      home: new DefaultTabController(
        length:choices.length,
        child:new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.white,
              title:new ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 40,
                ),
                child: new TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
                    hintText: '搜索全部故事',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ), 
              bottom:new TabBar(
                labelColor:Colors.black,
                labelStyle:TextStyle(fontSize:12.0),
                isScrollable:true,
                tabs:choices.map((Choice choice){
                    return new Tab(
                      text:choice.title,
                    );
                }).toList(),
            ),
            ),
          body:new TabBarView(
            children:choices.map((Choice choice){
              return new Container(
                padding:const EdgeInsets.only(left:15.0,right:15.0),
                child:ChoiceCard(titleName:choice.title,markName:choice.mark,choiceName:choice)//new ChoiceCard(choice:choice)
              );
            }).toList(),  
          )
        ),
      )
    );   
  }
}

//全部故事
Featured({String markName,Object choiceName}){
  return new FeaturedView();
}
//民宿
Listing({String markName,Object choiceName}){
  return new ListingView();
}
//美食
Food({String markName,Object choiceName}){
  return new FoodView();
}
//景点
Attractions({String markName,Object choiceName}){
  return new AttractionsView();
}
//文化
Culture({String markName,Object choiceName}){
  return new CultureView();
}
//灵感
City({String markName,Object choiceName}){
  return new CityView();
}
//探店
ProbeShop({String markName,Object choiceName}){
  return new ProbeShopView();
}
