import 'package:flutter/material.dart';
import '../common/Detail.dart' show Detail;

class GetDataSpecialofferRender extends StatelessWidget{
  GetDataSpecialofferRender({Key key,this.title,this.address,this.mark,this.img,this.roomfeatures,this.local,this.price}):super(key: key);
  final String title;
  final String address;
  final String mark;
  final String img;
  final String roomfeatures;
  final String local;
  final String price;
  @override
  Widget build(BuildContext context){
    return Container(
        margin:EdgeInsets.only(right:10.0),
        width:150.0,
        height:200.0,
        child:GestureDetector(
          onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=>Detail())
            );
          },
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Stack(
                children:<Widget>[
                  Image(
                    image: NetworkImage(img),
                    width:150.0,
                    height:100.0,
                    fit:BoxFit.fitWidth
                  ),
                  Positioned(
                    right:10.0,
                    child:Icon(Icons.favorite,color:Colors.white)
                  ),
                ]
              ),
              Text('${roomfeatures}.${local}',style:TextStyle(color:Colors.teal,fontSize:12.0)),
              Text(title,style:TextStyle(fontSize:13.0,),maxLines:2),
              Text('￥${price}每晚',style:TextStyle(fontSize:10.0,))
            ]
          )
        )
      );
    
  }

}