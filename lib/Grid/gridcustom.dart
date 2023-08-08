import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridViewCustom(),));
}

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Custom"),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       childrenDelegate: SliverChildListDelegate(
        List.generate(12, (index) => Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("data:image/jpeg;base64,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")
                  )
                ),
              ),
              Text("Travis Scott"),
              Text("American Rapper")
            ],
          ),
        ))
        ),
     ), );
  }
}