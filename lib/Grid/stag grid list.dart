import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: StagGridList(),));
}
class StagGridList extends StatelessWidget {
  const StagGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StaggeredGrid With List"),
      ),
    );
  }
}