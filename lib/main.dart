import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(CardApp());

class CardApp extends StatefulWidget {
  @override
  _CardAppState createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  int leftbutton = 2;
  int rightbutton = 3;
  int noofmove=10;
  int x=0, y=0;
  int i=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          backgroundColor: Colors.red,

          appBar: AppBar(
            title: Text("Play Card Game"),
            backgroundColor: Colors.red,

          ),

          body: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
Divider(height: 20.0,),
                        Container(
                          child: Text("Player 1 Score: $x",
                          style: TextStyle(fontSize: 25.0, color: Colors.white),),
                        ),
                  Divider(height: 100.0,),
                        Container(
                          child: Text("Player 2 Score: $y",
                              style: TextStyle(fontSize: 25.0, color: Colors.white),),
                        ),

Divider(height: 100.0,),
                  Container(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                if(i<=10) {
                                  setState(() {
                                    leftbutton = Random().nextInt(4) + 1;
                                    //rightbutton = Random().nextInt(4) + 1;
                                    if (leftbutton == rightbutton) {
                                      x++;
                                      print("player 1 scored $x");
                                    }
                                    i++;
                                    print("$i");
                                    if(i==10)
                                      {

                                      /*  if(x>y)
                                          {
                                            Alert(
                                                context: context, title: "RF", desc: "sss.").show();
                                          }*/
                                      }
                                  }

                                  );
                                }


                              },
                              child: Image.asset("images/file$leftbutton.png"),

                            ),

                          ),
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                if(i<=10) {
                                  setState(() {
                                    rightbutton = Random().nextInt(4) + 1;
                                    //leftbutton = Random().nextInt(4) + 1;

                                    if (leftbutton == rightbutton) {
                                      y++;
                                      print("player 2 scored $y");
                                      //  leftbutton = Random().nextInt(4) + 1;

                                    }
                                    i++;
                                    print("$i");
                                    if(i==10)
                                    {
                                    /*  //print("done");
                                      if(y>x)
                                        {
                                          //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
                                          Alert(
                                            context: context, title: "RF", desc: "sss.").show();

                                        }*/
                                    }
                                  });

                                }



                              },
                              child: Image.asset("images/file$rightbutton.png"),
                            ),
                          ),
                        ],
                      ),


                    ),

                  ),

                  Container(
                    child: Text("Player 1                          Player 2",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  ),



                ],
              ),
            ),
          )
      ),
    );
  }
}

