import 'package:flutter/material.dart';

class StatefullPage extends StatefulWidget {
  const StatefullPage({super.key});

  @override
  State<StatefullPage> createState() => _StatefullPageState();
}

class _StatefullPageState extends State<StatefullPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        title: Text("Recreating Data"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name!,style: GoogleFonts.bahiana(fontSize: 30,color:Colors.purple),),
            Text(location!,style: GoogleFonts.bahiana(fontSize: 30,color:Colors.purple),),
            Text("$phone",style: GoogleFonts.bahiana(fontSize: 30,color:Colors.purple),),
          ],
        ) ),
    ));
  }
}