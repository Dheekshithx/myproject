import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridView1()));
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My GridView")),
      body: GridView(
        gridDelegate:
            // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 60),
        children: List.generate(
            15,
            (index) => Card(
                  color: Colors.green[400],
                  child: Center(
                    child: Icon(Icons.power_off),
                  ),
                )),
      ),
    );
  }
}
