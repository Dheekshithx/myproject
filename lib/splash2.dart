import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : Splash2()));
}
class Splash2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.yellow,
    body:Container(decoration:const BoxDecoration(
  
    //   gradient: LinearGradient(
    //   begin:Alignment.bottomLeft,end:Alignment.topRight,
    //   colors:[ Colors.green,
    //   Colors.white,
    //   Colors.green,
    // ])),
    image:DecorationImage(
       fit:BoxFit.cover,
    image:AssetImage("assets/image/MuchaTseBle.jpg"))
   ),
    child:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/Map.png",height:150),
          //Icon(Icons.airline_seat_flat_sharp,size: 80,color: Colors.blue,),
          Text("Find me",style:TextStyle(fontSize:30,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),),
        ],
      ),
    ),
    ),
    
    );

  }
}