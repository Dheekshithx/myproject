import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewSeperated(),
  ));
}

class ListViewSeperated extends StatelessWidget {
  var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
   ListViewSeperated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Seperated"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 30,
                child: Card(child: Align(
                  alignment: Alignment.center,
                  child: Text(months[index]))));
            },
            separatorBuilder: (context, index) {
              if (index % 4 == 0) {
                return Card(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Advertisement")),
                  color: Colors.red,
                );
              } else {
                return SizedBox();
              } //can use text or anything instead of divider,
            },
            itemCount: 12));
  }
}
