import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: GridViewconstructor(),));
}

class GridViewconstructor extends StatelessWidget {
  const GridViewconstructor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("GridView Constructor"),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemBuilder: (context,index){
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Item"),
              Icon(Icons.accessibility_sharp)
            ],
          ),
        );
      }),
    );
  }
}