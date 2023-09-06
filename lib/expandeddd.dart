import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expandedd(),));
}

class Expandedd extends StatelessWidget {
  const Expandedd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Column(
        children: [
          Expanded(child:Image.network("https://images.unsplash.com/photo-1690975608976-1933d9e8ccde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60"),)
        ,Expanded(child: Image.network("https://images.unsplash.com/photo-1681859599890-ddda833e4d00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60"),),
        Expanded(child: Image.network("https://images.unsplash.com/photo-1690975608976-1933d9e8ccde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60"),),]),
    );
  }
}