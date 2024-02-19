import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_solution_challenge/api/gemini_api.dart';

class Gemini extends StatelessWidget {
  const Gemini({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    RxString result = ''.obs;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
          title: Text('Firewall Anti-Fire App', style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w500),),
          backgroundColor: Colors.transparent,
          ),
      backgroundColor: Colors.green,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                controller: textController,
                style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
                onPressed: () async {
                  result.value =
                      await GeminiAPI.getGeminiData(textController.text);
                },
                child:  Text(
                  'Learn Answer',
                  style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 20),
              Obx(() => Text(
                    result.value,
                    style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}