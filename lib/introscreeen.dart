import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myproject/splash2.dart';
import 'package:myproject/statefull%20login.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(home: Introscreen(),));
}

class Introscreen extends StatelessWidget {
  const Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration=PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w200,fontSize: 40,color: Colors.red,
      ),
      bodyTextStyle: GoogleFonts.poppins(fontStyle: FontStyle.italic,fontSize: 20,color: Colors.white),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Colors.grey,
        ])
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: "Porsche 991 ",
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImages("https://files.porsche.com/filestore/image/multimedia/none/992-gt3-rs-modelimage-sideshot/model/cfbb8ed3-1a15-11ed-80f5-005056bbdc38/porsche-model.png")
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Porsche 964",
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImages("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf-GKWUNZ9uKkNQOrMfKWIwHIVaTXqT2MDqw&usqp=CAU")
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Porsche 991 GT2 RS",
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImages("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdqq7xNgoz0vOK_qYGSroED_G7_McsjaOrAQ&usqp=CAU")
        ),
      ],
      onDone: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash2())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2())),
      showSkipButton: true,
      skip: Text("Skip"),
      next:Icon(Icons.arrow_forward_rounded),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
        size: Size(10, 12),
        color:Colors.grey,
        activeSize: Size(25,12),
        activeColor: Colors.red,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )
      ),
    );
  }
  
  Widget IntroImages(String image) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 300,
        width: 300,
        
        child: Image.network(image,width: 250,)),
    );
  }
}