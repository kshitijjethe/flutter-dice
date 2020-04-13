import 'package:flutter/material.dart';
import 'dart:math';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;
  var txt = "Tap To play";
  int result = 0 ;

  void update(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      result = leftDiceNumber + rightDiceNumber;
      txt = "Your Score is $result";
    });
  }

  void refresh(){
    setState(() {
      leftDiceNumber = 1;
      rightDiceNumber = 1;
      txt = "Tap to play";
    });
  }
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title:Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              
              // SizedBox(height:150.00),
              Container(
                child: Row(
            children : <Widget>[
              Expanded(
                flex: 1,
                child:FlatButton(
                  onPressed: (){
                    update();
                    print('Left dice clicked');
                  },
                  child:Image(
                    image:AssetImage('images/dice$leftDiceNumber.png')
                  )
                )  
              ),
              
              Expanded(
                flex:1,
                child:FlatButton(
                  onPressed: (){
                    update();
                    print('Left dice clicked');
                  },
                  child:Image(
                    image:AssetImage('images/dice$rightDiceNumber.png')
                  )
                ),
              )
            ]
          ),
              ),
              SizedBox(height:30.00),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Container(
                      child : FlatButton(
                        onPressed: (){
                        refresh();
                      } ,
                      child: Icon(
                      Icons.refresh,
                      color: Colors.white,
                      size: 50.00,
                      ))
                    ),
                    Container(
                      child : FlatButton(
                        onPressed:(){
                          update();
                        },
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size:50.00,
                          ),
                      )
                    )
                  ]
                )
              ),
              SizedBox(height: 30.00,),
              Container(
                child:Text(
                  "$txt",
                  style: TextStyle(
                    fontSize:30.00,
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                  ),  
                )
              )
            ]
          ),
        )
      ),
    );
  }
}