/*
INTRO:全部故事
DATA:book
 */


import 'package:flutter/material.dart';
import 'model.dart' show ModelViewContainer;

class FeaturedView extends StatelessWidget{
  const FeaturedView({Key key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body:new Container(
        child:new ListView(
          children:[
            //建议搜搜
            new Container(
              margin:EdgeInsets.only(top:20.0,bottom:20.0),
              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Container(
                    margin:EdgeInsets.only(bottom:10.0),
                    child:Text('建议搜索',style:TextStyle(fontSize:20.0,fontWeight:FontWeight.w600)),
                  ),
                  new Container(
                    height:130.0,
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        new Container(
                            width: 150.0,
                            padding: EdgeInsets.all(5.0),
                            child:new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                new Center(child: new Image.asset('images/1-1.png', width:150.0,height:85.0,fit:BoxFit.cover)),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width:double.infinity,
                                  height:35.0,
                                  decoration: new BoxDecoration(
                                    border: new Border.all(width: 1.0, color: Colors.grey),
                                  ),
                                  child:new Text('奇妙民宿',
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
                            
                        ),
                        new Container(
                            width: 150.0,
                            padding: EdgeInsets.all(5.0),
                            child:new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                new Center(child: new Image.asset('images/1-2.png', width:150.0,height:85.0,fit:BoxFit.cover)),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width:double.infinity,
                                  height:35.0,
                                  decoration: new BoxDecoration(
                                    border: new Border.all(width: 1.0, color: Colors.grey),
                                  ),
                                  child:new Text('寻好味',
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
                            
                        ),
                        new Container(
                            width: 150.0,
                            padding: EdgeInsets.all(5.0),
                            child:new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                new Center(child: new Image.asset('images/1-3.jpg',width:150.0,height:85.0,fit:BoxFit.cover)),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width:double.infinity,
                                  height:35.0,
                                  decoration: new BoxDecoration(
                                    border: new Border.all(width: 1.0, color: Colors.grey),
                                  ),
                                  child:new Text('优质民宿',
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
                        ),
                        new Container(
                            width: 150.0,
                            padding: EdgeInsets.all(5.0),
                            child:new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                new Center(child: new Image.asset('images/1-3.jpg',width:150.0,height:85.0,fit:BoxFit.cover)),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width:double.infinity,
                                  height:35.0,
                                  decoration: new BoxDecoration(
                                    border: new Border.all(width: 1.0, color: Colors.grey),
                                  ),
                                  child:new Text('甜点咖啡',
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
                        )
                      ],
                    ),
                  ),
                ]
              ),
            ),
            //猜您喜欢
            new Container(
              margin:EdgeInsets.only(top:20.0,bottom:20.0),
              child:new Column(
                children:[
                  Container(
                    alignment:Alignment.topLeft,
                    margin:EdgeInsets.only(bottom:10.0),
                    child:Text('猜您喜欢',style:TextStyle(fontSize:20.0,fontWeight:FontWeight.w600)),
                  ),
                  Container(
                    height:400.0,
                    child:Wrap(
                      children:[
                        Container(
                          alignment:Alignment.topLeft,
                          width:165.0,
                          height:200.0,  
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Image.network('https://z1.muscache.cn/im/pictures/cdd7e065-a278-4d02-a02e-b7a5088e0904.jpg?aki_policy=x_large',width:150,height:100.0,fit:BoxFit.cover ),
                                Text('北京.美食'),
                                Text('甜品的世界里，颜值既是正义',maxLines: 2),
                                Text('编辑精选'),
  
                            ]
                          )
                        ),
                        Container(
                          alignment:Alignment.topLeft,
                          width:165.0,
                          height:200.0,
 
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Image.network('https://z1.muscache.cn/im/pictures/415faff0-fd98-4d1c-9c38-3fcefa410cfe.jpg?aki_policy=x_large', width:150,height:100,fit:BoxFit.fitWidth),
                                Text('萨拉热窝.景点'),
                                Text('波黑的高山木屋'),
                                Text('编辑精选'),
                            ]
                          )
                        ),
                        Container(
                          alignment:Alignment.topLeft,
                          width:165.0,
                          height:200.0,

                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Image.network('https://z1.muscache.cn/im/pictures/7249fb34-f168-44a2-91ed-9dabf7be9740.jpg?aki_policy=x_large', width:150,height:100,fit:BoxFit.fitWidth),
                                Text('厦门.景点'),
                                Text('藏在百年历史风貌建筑里的书店'),
                                Text('编辑精选'),
                            ]
                          )
                        ),
                        Container(
                          alignment:Alignment.topLeft,
                          width:165.0,
                          height:200.0,
 
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Image.network('https://z1.muscache.cn/im/pictures/4cf1407d-b7aa-4d7b-a707-091f8d09c19a.jpg?aki_policy=x_large',width:150, height:100,fit:BoxFit.fitWidth),
                                Text('伊朗.景点'),
                                Text('在万花筒般的波斯古宅，遇见一位不可思议的「假中国人」',maxLines: 2,),
                                Text('编辑精选'),
                            ]
                          )
                        ),
                      ]
                    )
                  ),
                ]
              ),
            ),
            //住进山水间
            new Container(
              margin:EdgeInsets.only(top:20.0,bottom:20.0),
              child:Column(
                children:[
                  Container(
                    alignment:Alignment.topLeft,
                    margin:EdgeInsets.only(bottom:10.0),
                    child:new Stack(
                      children:[
                        Image.network('https://z1.muscache.cn/4ea/air/c:w2-h1-go,r:w1440-h720-sfit,e:fjpg-c75/pictures/8b0dd5cb-e5fd-4bc5-aca3-f9c5f750fa25.jpg'),
                        new Positioned(
                            left: 15.0,
                            bottom: 10.0,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text('爱彼迎民宿指南',style:TextStyle(color:Colors.white,fontSize:16.0)),
                                Text('住进【山水间】在民宿中亲近自然',style:TextStyle(color:Colors.white,fontSize:16.0)), 
                              ]
                            )
                        ),
                      ]
                    )
                  ),
                  Container(
                    height:340.0,
                    child:GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, 
                          childAspectRatio: 1.0
                      ),
                      children:<Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                            children:[
                                Image.network('https://z1.muscache.cn/im/pictures/b0dd0a15-2e41-42dc-ad86-7a5af893418c.jpg?aki_policy=xx_large',height:100.0, fit:BoxFit.fitHeight),
                                Text('新年从净肺开始，住进氧气西湖山水间',maxLines:2)
                            ]
                          )
                        ),
                        Container(
                          //alignment:Alignment.topLeft,
                          //height:200,
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                            children:[
                              Image.network('https://z1.muscache.cn/im/pictures/505d6c30-2457-41d1-a359-30693df4b15e.jpg?aki_policy=xx_large', height:100.0, fit:BoxFit.fitHeight),
                              Text('新年从净肺开始，住进氧气西湖山水间',maxLines:2)
                            ]
                          )
                        ),
                        Container(
                          alignment:Alignment.topLeft,
                          height:200,
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                             children:[
                              Image.network('https://z1.muscache.cn/im/pictures/59285b27-f855-4a9d-8ba0-aae659a7071f.jpg?aki_policy=xx_large', height:100.0, fit:BoxFit.fitHeight),
                              Text('2 小时抵达好风景，苏州亲子主题民宿清单',maxLines:2)
                              ]
                          )
                        ),
                        Container(
                          alignment:Alignment.topLeft,
                          height:200,
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                             children:[
                              Image.network('https://z1.muscache.cn/im/pictures/eb78ac9f-3c16-42d3-9657-38c4ac22884d.jpg?aki_policy=xx_large', height:100.0, fit:BoxFit.fitHeight),
                              Text('久违的乡村田园风，来重庆度过巴适假期',maxLines:2)
                              ]
                          )
                        ),
                      ]
                    ),
                  ),
                ]
              )
            ),
            //住进旧时光
            new Container(
              margin:EdgeInsets.only(top:20.0,bottom:20.0),
              child:Column(
                children:[
                  Container(
                    alignment:Alignment.topLeft,
                    margin:EdgeInsets.only(bottom:10.0),
                    child:new Stack(
                      children:[
                        Image.network('https://z1.muscache.cn/4ea/air/c:w2-h1-go,r:w1440-h720-sfit,e:fjpg-c75/pictures/c182c81c-86f0-40ee-b8e4-4a8d9fe9f846.jpg'),
                        new Positioned(
                            left: 15.0,
                            bottom: 10.0,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text('爱彼迎民宿指南',style:TextStyle(color:Colors.white,fontSize:16.0)),
                                Text('住进【旧时光】在民宿中重拾历史',style:TextStyle(color:Colors.white,fontSize:16.0)), 
                              ]
                            )
                        ),
                      ]
                    )
                  ),
                  Container(
                    height:340.0,
                    child:GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, 
                          childAspectRatio: 1.0
                      ),
                      children:<Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                            children:[
                                Image.network('https://z1.muscache.cn/im/pictures/0d986f5a-6fa3-41b0-970d-2f58ee1ac08a.jpg?aki_policy=xx_large',height:100.0, fit:BoxFit.fitHeight),
                                Text('入住名人故居，探索历史书都写不出的旧时光',maxLines:2)
                            ]
                          )
                        ),
                        Container(
                          //alignment:Alignment.topLeft,
                          //height:200,
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                            children:[
                              Image.network('https://z1.muscache.cn/im/pictures/e0849012-91d6-4ed2-a2a1-589bd83ebb71.jpg?aki_policy=xx_large', height:100.0, fit:BoxFit.fitHeight),
                              Text('住进废旧老工厂，钢筋水泥带来奇幻一夜',maxLines:2)
                            ]
                          )
                        ),
                        Container(
                          alignment:Alignment.topLeft,
                          height:200,
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                             children:[
                              Image.network('https://z1.muscache.cn/im/pictures/e22bf16c-5f18-49f7-b95a-0ba9de69f999.jpg?aki_policy=xx_large', height:100.0, fit:BoxFit.fitHeight),
                              Text('清朝老宅巡游，首站住进乾隆爷的江南行宫',maxLines:2)
                              ]
                          )
                        ),
                        Container(
                          alignment:Alignment.topLeft,
                          height:200,
                          padding: EdgeInsets.all(5.0),
                          child:Column(
                             children:[
                              Image.network('https://z1.muscache.cn/im/pictures/336abb92-fe19-4204-8c1d-b90cd3f3236c.jpg?aki_policy=xx_large', height:100.0, fit:BoxFit.fitHeight),
                              Text('穿梭小桥流水，住进白墙青砖的苏州老宅',maxLines:2)
                              ]
                          )
                        ),
                      ]
                    ),
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
