import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewUI(),
  ));
}

class GridViewUI extends StatelessWidget {
  var icon = [
    Icon(Icons.home),
    Icon(Icons.ring_volume),
    Icon(Icons.camera_enhance_sharp),
    Icon(Icons.star_border_purple500_sharp),
    Icon(Icons.car_crash),
    Icon(Icons.bike_scooter),
    Icon(Icons.catching_pokemon),
    Icon(Icons.biotech_rounded),
    Icon(Icons.directions_walk_rounded),
    Icon(Icons.donut_large)
  ];
  var color = [
    Colors.indigo,
    Colors.redAccent,
    Colors.red,
    Colors.green[400],
    const Color.fromRGBO(255, 235, 59, 1),
    Colors.blue,
    Colors.greenAccent[400],
    Colors.indigoAccent,
    Colors.pink,
    Colors.deepPurpleAccent
  ];
  GridViewUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: List.generate(
          10,
          (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: color[index]),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [icon[index], Text("Heart Shaker")],
                    ),
                  ),
                ),
              )),
    ));
  }
}
