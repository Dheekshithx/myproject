import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListViewCustom2(),));
}

class ListViewCustom2 extends StatelessWidget {
  const ListViewCustom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Custom 2"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => Text("HOLA"),
      childCount: 10)),
    );
  }
}