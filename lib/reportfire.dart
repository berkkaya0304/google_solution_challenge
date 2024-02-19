import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

class reportFire extends StatefulWidget {
  const reportFire({super.key});

  @override
  State<reportFire> createState() => _reportFire();
}

class _reportFire extends State<reportFire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Firewall Anti-Fire App', style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w500),),
          backgroundColor: Colors.green,
        ),
        body: FireReportScreen(),
      );
  }
}

class FireReportScreen extends StatefulWidget {
  @override
  _FireReportScreenState createState() => _FireReportScreenState();
}

class _FireReportScreenState extends State<FireReportScreen> {
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                hintText: 'Enter location',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Description:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Enter description',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Date:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                hintText: 'Enter date',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement functionality to submit the fire report
              },
              child: Text('Submit Report'),
            ),
          ],
        ),
      ),
    );
  }
}