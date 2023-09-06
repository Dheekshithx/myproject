import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(home: AtmCard(),));
}

class AtmCard extends StatelessWidget {
  const AtmCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Card"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              
              height:200,
              width:400,
              
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20) ,
                color: Colors.teal[400]
              ),
            ),
            Positioned(
              top:150,
            
              left: 30,
              
              child: Text("Arthur Dent",style: GoogleFonts.poppins(color: Colors.grey[50]))),
              Positioned(
                top: 100,
                left:280,
                height: 100,
                width: 100,
                child: Image.asset("assets/image/visa.png")),
                Transform.rotate(
                  angle: 90 * pi/4,
                  child: Positioned(child: FaIcon(FontAwesomeIcons.wifi)))
              
          ],
        ),
      ),
    );
  }
}