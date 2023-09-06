import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Stack Ex"),
      ),
      body: Stack(
        children: [
          Positioned(
            
            
            child: Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
          ),
          Positioned(
            left:100,
            bottom:100,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
