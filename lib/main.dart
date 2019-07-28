import 'package:flutter/material.dart';
import 'dart:convert';

import 'details.dart';
import 'model/items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
Size size;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Spices & Vegitables"),
      ),
      body: Stack(
        children: <Widget>[
           Container(
             width: double.infinity,
             height: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                   bottomRight: Radius.elliptical( size.width, size.width),
                   topRight: Radius.circular(size.width/2),
                   topLeft: Radius.circular(size.width/2),
               ),
               color: Colors.white54
             ),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              mainAxisSpacing: 10,
              childAspectRatio: 320/470,
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              children: <Widget>[

                ///----------------Item One-----------------------------
                InkWell(
                  onTap:(){
                    loadDetail(context,1);
                  },
                  child: Card(
                      elevation: 15,
                      child: Stack(
                        children: <Widget>[
                          Image.asset("spices.png", fit: BoxFit.cover,height: 320,),

                            Align(
                              alignment:Alignment.bottomCenter,

                              child:  Container(width:double.infinity,color:Colors.white70,child: Text( "Spices\n View",style: TextStyle(color: Colors.pink,fontSize: 20,fontStyle: FontStyle.italic),textAlign: TextAlign.center  )),
                            ),


                        ],
                      )

                  ),

                ),

                ///----------------Item two-----------------------------

                InkWell(
                  onTap:(){
                    loadDetail(context,2);
                  },
                  child: Card(
                      elevation: 15,
                      child: Stack(
                        children: <Widget>[
                          Image.asset("dry_fruite.png", fit: BoxFit.cover,height:320,),

                          Align(
                            alignment:Alignment.bottomCenter,
                            child:  Container(width:double.infinity,color:Colors.white70,child: Text( "Dry Fruites\n View",style: TextStyle(color: Colors.pink,fontSize: 20,fontStyle: FontStyle.italic) ,textAlign: TextAlign.center )),
                          ),


                        ],
                      )

                  ),

                ),

                ///----------------Item three-----------------------------
                InkWell(
                  onTap:(){
                    loadDetail(context,3);
                  },
                  child: Card(
                      elevation: 15,
                      child: Stack(
                        children: <Widget>[
                          Image.asset("vegetables.png", fit: BoxFit.cover,height: 320,),

                          Align(
                            alignment:Alignment.bottomCenter,
                            child:  Container(width:double.infinity,color:Colors.white70,child: Text( "Vegetables \n View",style: TextStyle(color: Colors.pink,fontSize: 20,fontStyle: FontStyle.italic),textAlign: TextAlign.center  )),
                          ),


                        ],
                      )

                  ),

                ),

                    ///----------------Item Four-----------------------------

                InkWell(
                  onTap:(){
                    loadDetail(context,4);
                  },
                  child: Card(
                      elevation: 15,
                      child: Stack(
                        children: <Widget>[
                          Image.asset("pulses.png", fit: BoxFit.cover,height: 320,),

                          Align(
                            alignment:Alignment.bottomCenter,
                            child:  Container(width:double.infinity,color:Colors.white70,child: Text( "Pulses \n View",style: TextStyle(color: Colors.pink,fontSize: 20,fontStyle: FontStyle.italic,),textAlign: TextAlign.center,  )),
                          ),


                        ],
                      )

                  ),

                ),


              ],
            ),
          ),
        ],

      ),
    );
  }

  loadDetail(BuildContext ctx,position)
  {
    Navigator.push(ctx, MaterialPageRoute(builder: (_){

      return DetailsPage(position);
    }));
  }
}
