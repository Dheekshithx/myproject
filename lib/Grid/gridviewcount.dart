import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: GridViewCount(),));
}

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Constructor"),
        
      ),
      body: GridView.count(crossAxisCount: 3,
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