import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:ListViewCustom()));
}

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Custom"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
       List.generate(10, (index) => Text("Hello")) 
      )),
    );
  }
}