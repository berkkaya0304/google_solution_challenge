import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

class EndemicSpecs extends StatefulWidget {
  const EndemicSpecs({super.key});

  @override
  State<EndemicSpecs> createState() => _endemicSpecs();
}

class _endemicSpecs extends State<EndemicSpecs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Firewall Anti-Fire App', style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w500),),
          backgroundColor: Colors.green,
        ),
      );
  }
}