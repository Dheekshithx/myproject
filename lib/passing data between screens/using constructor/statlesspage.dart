import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatelessPage extends StatelessWidget {
  int? phone;
  String? location;
  String? name;

   StatelessPage({super.key,this.phone,this.location,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}