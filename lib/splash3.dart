import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';
import 'statefull login.dart';

void main(){
  runApp(MaterialApp(home:Splash3(),));
}

class Splash3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Splash3State(); 

}

class Splash3State extends State<Splash3>{
  @override
  void initState() {
    Timer(Duration(seconds: 5),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login2()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:Center(
      child:Image.asset("assets/image/MuchaTseBle.jpg") ,
      ),
   );
  }

}