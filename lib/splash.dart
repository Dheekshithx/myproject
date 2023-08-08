import 'package:flutter/material.dart';

void main(){
  //attach our widget tree to the UI
  runApp(MaterialApp(//default theme for our app
    home:SplashPage(),//initial page to be launched
  ));
}
//stateless means this page does not undergo any statechanges
class SplashPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("My Splash Page")),
    );
  }

}