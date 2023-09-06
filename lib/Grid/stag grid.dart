import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StagGrid(),));
}
class StagGrid extends StatelessWidget {
  const StagGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggerd GridView"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 3
            , mainAxisCellCount: 2,
             child: Container(
              color: Colors.greenAccent,
              child: Center(child: Icon(Icons.cabin)),
             ),
             ),
             StaggeredGridTile.count(crossAxisCellCount: 1
            , mainAxisCellCount: 3,
             child: Container(
              color: Colors.yellow,
              child: Center(child: Icon(Icons.card_giftcard_sharp)),
             ),
             ),
             StaggeredGridTile.count(crossAxisCellCount: 2
            , mainAxisCellCount: 2,
             child: Container(
              color: Colors.red,
              child: Center(child: Icon(Icons.heat_pump_rounded)),
             ),
             ),
             StaggeredGridTile.count(crossAxisCellCount: 1
            , mainAxisCellCount: 1,
             child: Container(
              color: Colors.blue,
              child: Center(child: Icon(Icons.build_outlined)),
             ),
             ),
             StaggeredGridTile.count(crossAxisCellCount: 2
            , mainAxisCellCount: 2,
             child: Container(
              color: Colors.grey,
              child: Center(child: Icon(Icons.phone)),
             ),
             ),
             StaggeredGridTile.count(crossAxisCellCount: 1
            , mainAxisCellCount: 1,
             child: Container(
              color: Colors.black,
              child: Center(child: Icon(Icons.menu,color: Colors.white,)),
             ),
             ),
             StaggeredGridTile.count(crossAxisCellCount: 1
            , mainAxisCellCount: 1,
             child: Container(
              color: Colors.teal[900],
              child: Center(child: Icon(Icons.cloud)),
             ),
             ),
          ],),
      ),
    );
  }
}