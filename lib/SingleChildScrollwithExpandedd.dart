import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Story(),
  ));
}

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        title:
        
         Text(
          
          "Koenigsegg",
          style: GoogleFonts.kanit(fontSize: 30,color:Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDWr5AyXVHvXwZ3EwWTRQx0GO5Q9dVMnBNxQ&usqp=CAU"))
            ),
          ),
          Text("Agera R",
              style: GoogleFonts.indieFlower(fontSize: 25, color: Colors.red)),
          Expanded(
              child: SingleChildScrollView(
            child: Text(
                """A Koenigsegg CC prototype was first publicised in 1996, while the full carbon fibre production prototype having white paintwork was finally unveiled at the 2000 Paris Motor Show. Stephan Reeckmann became the first customer of the brand, placing a deposit in 2001.[23] Another customer took delivery of a red CC8S in 2002 at the Geneva Auto Show and four more cars were built that year. Koenigsegg was established in Asia later that year with a premiere at the Seoul Auto Show. In 2004, the new CCR, which was basically a high performance variant of the CC8S, was unveiled at the Geneva Auto Show; only 14 were produced.[24]

In 2006, Koenigsegg introduced the CCX, a new model, that was developed in order to meet worldwide regulations for road use. This meant the car had to go through extensive development in order to meet the latest and most stringent safety and emission standards that the world's authorities demanded; Koenigsegg had to, for example, develop its own engines and other related technologies.[25][26]

In 2007, Koenigsegg premiered the CCXR, a biofuel/flex-fuel version of the CCX. The car features a modified engine, fuel system, and engine management system that enables the car to run on normal gasoline or ethanol, and in any mixture between these two fuels. Ethanol has a higher octane rating compared to regular fuel and has an internal cooling effect on the combustion chamber, which allows for increased performance.[citation needed]

In 2009, Koenigsegg released information about a special edition car called the Trevita, of which three were planned to be made but only two were finished due to technical problems. The Trevita, which translates into English as "three whites", has a body made entirely of Koenigsegg's proprietary material consisting of diamond-coated carbon fibre. The Trevita is based on the CCXR, and therefore has a power output of 1,032 PS (759 kW; 1,018 hp) when running on biofuel.[27]


Sound of Koenigsegg Agera
0:11
The Koenigsegg Agera at Goodwood Festival of Speed 2010
Problems playing this file? See media help.
In 2010 Koenigsegg released information at the 2010 Geneva Motor Show about a new model called the Agera, which translates into English as "take action/act". The Agera features a Koenigsegg developed 5.0-litre V8 engine coupled with variable turbo geometry turbochargers having a power output of 973 PS (716 kW; 960 hp), mated to a newly developed 7-speed dual clutch transmission. The Agera's design follows a clear lineage from the previous Koenigsegg sports cars, but adds many special new features, such as a wider front track, new styling and aerodynamic features, and a new interior; including a new lighting technique called "Ghost Light" by the manufacturer which consists of microscopic holes to hide the interior lighting until it is turned on, which then shines through what appears to be solid aluminium.[28][29] Production of the Agera ended in July 2018 after being in production for eight years when two of the three final edition cars were presented to its customers.

At the 2015 Geneva Motor Show, Koenigsegg presented a new model named the Regera, which translates into English as to "reign" or "rule". The Regera uses the Koenigsegg Direct Drive (KDD) transmission. Below 48 km/h (30 mph), motive power is by two electric motors on the rear wheels and the internal combustion engine (ICE) is disconnected. Above 48 km/h (30 mph), the ICE is connected by a fixed ratio transmission with no gearbox, torque vectoring by the previously mentioned electric motors and boosted by a third electric motor attached to the driveshaft.[30][31]

Koenigsegg initially based its engine on a V8 engine block from Ford Racing. These engines powered the initial run of the CC monikered cars. The block for the 4.8 L (4,800 cc) V8 in the CCX (Competition Coupe Ten, to celebrate ten years of the company) was cast for Koenigsegg by Grainger & Worrall of the UK who also cast the block for the Agera's 5.0-litre engine.[32]


Koenigsegg Jesko
In late 2018, Koenigsegg showed potential customers in Australia the replacement of the Agera via VR. Teaser sketches were released by the company at the same time. Initially, the model was rumoured to be called "Ragnarok" but the public unveil of the car at the 2019 Geneva Motor Show revealed the name to be Jesko, after the founder's father Jesko Von Koenigsegg.


"""),
          ))
        ],
      ),
    );
  }
}
