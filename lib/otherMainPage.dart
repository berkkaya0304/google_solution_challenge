import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_solution_challenge/coverageArea.dart';
import 'package:google_solution_challenge/donation/donations.dart';
import 'package:google_solution_challenge/endemic_specs/specs.dart';
import 'package:google_solution_challenge/detectionCamera.dart';
import 'package:google_solution_challenge/gemini.dart';
import 'package:google_solution_challenge/datasAboutWorld.dart';
import 'package:google_solution_challenge/main.dart';
import 'package:google_solution_challenge/reportfire.dart';
import 'package:google_solution_challenge/socialMedia.dart';

class otherMainPage extends StatefulWidget {
  const otherMainPage({super.key});

  @override
  State<otherMainPage> createState() => _OtherMainPageState();
}

class _OtherMainPageState extends State<otherMainPage> {

  void signOut(){
    FirebaseAuth.instance.signOut();
     Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Firewall Anti-Fire App', style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w500),),
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: signOut, icon: Icon(Icons.logout)),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green,
                Color.fromARGB(100, 50, 151, 219),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  color: Colors.green[10],
                  child: Text("Powered by RönesanZ ",style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(20),
                    children: [
                      ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => reportFire()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Text("Report Fire",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500)),
    ),
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Donations()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Donation",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500,))),
    ),
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Specs()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Endemic Spec.",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500))),
    ),
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CoverageArea()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Coverage Area",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500))),
    ),
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DatasAboutWorld()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Data of World & Turkiye",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500))),
    ),
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Gemini()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("AI Helper",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500))),
    ),
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SocialMedia()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Social Media",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500))),
    ),
    
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetectionCamera()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(1000, 2, 48, 32),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Detection Camera",textAlign: TextAlign.center,style: GoogleFonts.mavenPro(fontSize: 25, fontWeight: FontWeight.w500))),
    ),
    
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}