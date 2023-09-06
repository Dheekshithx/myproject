import 'package:flutter/material.dart';


class Gridd extends StatelessWidget {
  var icons=[
    Icons.account_balance,
    Icons.heat_pump_outlined,
    Icons.payment,
    Icons.transform_rounded,
    Icons.schedule_sharp,
    Icons.qr_code
  ];
  var names=["My Account","Load eSewa","Payment","Fund Transfer","Schedule Payment","Scan to Pay"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3), itemBuilder:(context,index)=>
      Card(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Icon(icons[index],color: Colors.red,),
          SizedBox(height: 10),
          Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),)
         ], 
        ),
      )),
    );
  }
}