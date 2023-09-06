import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LotAnim(),));
}

class LotAnim extends StatelessWidget {
  const LotAnim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Lottie.network("https://lottie.host/3ff8ed42-f1cf-4740-ae24-a11befa728f6/o0ttTQUm1y.json"),
          Lottie.network("https://lottie.host/97129209-a002-4d06-b28b-3febe9bf9960/7PcDmJazSY.json")
        ],
      ),
    );
  }
}