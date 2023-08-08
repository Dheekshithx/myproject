import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: GridViewExtent(),));
}

class GridViewExtent extends StatelessWidget {
  const GridViewExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Constructor"),
        
      ),
      body: GridView.extent(maxCrossAxisExtent: 60,
      children: List.generate(15, (index) => Card(
        child: Center(
          child: Text("Hello"),
        ),
      )),
      )
      ,
    );
  }
}