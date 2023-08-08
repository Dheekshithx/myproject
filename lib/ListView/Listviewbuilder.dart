import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: ListViewBuilder(),));
}
class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: Center(
            child: Image.network("data:image/jpeg;base64,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"),
          ),
        );
      },
      itemCount: 10,),
    );
  }
}