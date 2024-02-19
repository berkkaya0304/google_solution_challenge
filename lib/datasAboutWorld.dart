import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DatasAboutWorld extends StatefulWidget {
  const DatasAboutWorld({super.key});

  @override
  State<DatasAboutWorld> createState() => _DatasAboutWorld();
}

class _DatasAboutWorld extends State<DatasAboutWorld> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
          title: const Text('Firewall Anti-Fire App'),
          backgroundColor: Colors.green,
          ),
          body: content(),
        );
  }
  }


Widget content(){
  return Scaffold(
    backgroundColor: Color.fromARGB(1000, 2, 48, 32),
    body: Column(
      children: [
        Stack(
          children:[ Container(
            height:100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                child: Image.asset("assets/images/firewall.png"),
              ),
            ),
          )
      ]),SizedBox(
            width: 100,
          ),
      Transform(
        transform: Matrix4.translationValues(0, 0, 0),
        child: Column(
          children: [
            Text("World Indexes",
            style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("06/02/2024", style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500),),
          SizedBox(
            width: 10,
          )
           ],
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("FA: Forest Area", style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500),),
          SizedBox(
            width: 10,
          )
           ],
          ),
        ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: stateBox(Colors.black, "Total FA","4.060.000.000 Hectares"),
                  flex:1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                  child: stateBox(Colors.black, "Most FA Country","Russia"),
                  flex:1,
                  ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: stateBox(Colors.red, "FA burned(10 years)","82.000.000 Hectares"),
                  flex:1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                  child: stateBox(Colors.red, "Most FA Burned Country(16 years)","Ukraine"),
                  flex:1,
                  ),
              ],
            ),
          ]
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Text("Turkiye Statics",style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500)),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: stateBox(Colors.black, "Total FA","23.000.000 Hectars"),
                  flex:1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                  child: stateBox(Colors.black, "Top City","Amasya"),
                  flex:1,
                  ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            stateBox(Colors.black, "Most Common Tree", "Oak")
          ]
        ),
      ),
      ]
    ),
  );
}

Widget stateBox(Color color, String value, String total){
  return Container(
          height:100,
          width: 220,
          decoration: BoxDecoration(
            color: color, 
            borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(value,textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white)),
                SizedBox(
                  height: 10,
                ),
                Text(total,textAlign: TextAlign.center, style: GoogleFonts.mavenPro(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
           ] 
  ));
}