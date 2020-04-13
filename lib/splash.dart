import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dice/home.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds:2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.red,
      body: Center(
        child:Text(
          "Dice",
          style:TextStyle(
            fontSize:30.00,
            color: Colors.white,
          )
        )
      ),
    );
  } 
}