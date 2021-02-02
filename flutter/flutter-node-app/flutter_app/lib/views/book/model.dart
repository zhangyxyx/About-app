/*
INTRO:模板
DATA:
 */
import 'package:flutter/material.dart';
import '../common/Detail.dart' show Detail;
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


//渲染每个模板   
class BookModelDataRender extends StatelessWidget{
  BookModelDataRender({Key key, this.content,this.city,this.mark,this.belong,this.imagesrc}):super(key: key);
  final String city;
  final String content;
  final String mark;
  final String belong;
  final String imagesrc;
  @override
  Widget build(BuildContext context){
      return GestureDetector(
        onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder:(context)=>Detail())
          );
        },
        child:Container(
          width:160,
          height:200,
          padding: EdgeInsets.all(5.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Stack(
                children:[
                  Image.asset(imagesrc, height:100,fit:BoxFit.fitWidth),
                  Positioned(
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
              Padding(
                padding:EdgeInsets.only(top:5.0,bottom:5.0),
                child:Text(content,style:TextStyle(color:Colors.black),maxLines: 2,)
              ),
              Row(
                children:[
                  Icon(Icons.thumb_up,size:15.0),Text('399'),
                  Icon(Icons.feedback,size:15.0),Text('22'),
                ]
              )
            ]
          )
        )
       
      );
                              
  }
}


//模板 Container
class ModelViewContainer extends StatelessWidget{
  ModelViewContainer({Key key, this.title,this.content,this.mark,this.img}):super(key: key);
  final String title;
  final String content;
  final String mark;
  final String img;
  @override
  Widget build(BuildContext context){
    return new Container(
              width: 150.0,
              padding: EdgeInsets.all(5.0),
              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  new Center(child: new Image.asset('images/1-1.png', width:150.0,height:80.0,fit:BoxFit.cover)),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    width:double.infinity,
                    height:41.0,
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 1.0, color: Colors.grey),
                    ),
                    child:new Text(content,
                      style:new TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 12.0,
                      )), 
                  )
                ]
              )
              
          );
                        
  }
}
