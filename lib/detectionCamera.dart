import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class DetectionCamera extends StatefulWidget {

  @override
  State<DetectionCamera> createState() => _DetectionCamera();
}

class _DetectionCamera extends State<DetectionCamera> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 2, 48, 32),
        appBar: AppBar(
          title: Text('Firewall Anti-Fire App', style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w500),),
          backgroundColor: Colors.green,
        ),
        body: Container(
           child: Column(
            children: [
              Text("Next Version!",style: TextStyle(color: Colors.white))
            ],
           ),
        ),
      );
  }
}