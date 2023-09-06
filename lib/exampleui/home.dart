import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/exampleui/refactor/Ttransactions.dart';
import 'package:myproject/exampleui/refactor/grid.dart';
import 'package:myproject/exampleui/refactor/stackk.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Bankui() ,));
}

class Bankui extends StatelessWidget {
  const Bankui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title:Text("Welcome! MAUSASM"),
      centerTitle: true,
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.qr_code_scanner_sharp)
      ],),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([Stackk(),
          Row(
            children: [
              FaIcon(FontAwesomeIcons.leaf,color: Colors.red),
              SizedBox(width:10),
              Text("WOULD YOU LIKE TO?",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Gridd(),
          ),
          Row(
            children: [
              FaIcon(FontAwesomeIcons.leaf,color:Colors.red),
              SizedBox(width: 10),
              Text("LAST TRANSACTIONS",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 10),
          Transactionss(transactionid: '978556373838383', 
          date: '10-06-2019', 
          npr: 'NPR.10,000.00',),
          SizedBox(height: 10),
          Transactionss(transactionid: "9892010100101", date: "17-06-2019", npr: "NPR.11,000.00"),
          SizedBox(height: 10),
          Transactionss(transactionid: "9647828744678", date: "20-06-2019", npr: "NPR.12,000.00"),
          SizedBox(height: 10),
          Transactionss(transactionid: "9738920092873", date: "25-06-2019", npr: "NPR.15,000.00"),
          SizedBox(height: 10),

          ]))
        ]
          
        ,
      ),
    );
  }
}