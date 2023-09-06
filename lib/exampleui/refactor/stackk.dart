import 'package:flutter/material.dart';

class Stackk extends StatelessWidget {
  const Stackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
        ),
        Container(
          height: 100,
          color: Colors.red,
        ),
        Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: SizedBox(
            height: 180,
            child: Card(
              child: Row(
                children: [
                  SizedBox(width: 30),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEqO3iShBTdeYHEqVjCABipZhz1Y9iQLWiRQ&usqp=CAU"),),
                    SizedBox(width:50, ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text("SAMMUNATI BACHAT KHATA",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(children:[ Text("NPR.1,00,999.35",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                        Icon(Icons.visibility,color: Colors.blue,)]),
                        Text("23456865346728887",style:TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}