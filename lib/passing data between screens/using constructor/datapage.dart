import 'package:flutter/material.dart';
import 'package:myproject/passing%20data%20between%20screens/using%20constructor/statlesspage.dart';


void main(){
  runApp(MaterialApp(home:Datapage()));
}
class Datapage extends StatelessWidget {
  const Datapage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passing data btw screens using constuctpr"),
      ),
      body: Container(

        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>StatelessPage(name: "Luminar",location: "Kakkanad",phone: 980977474,)),

            );}, child: Text("to stateless page")),
          ElevatedButton(onPressed: (){}, child: Text("to statefull pa"))],
        ),
      ),
    );
  }
}