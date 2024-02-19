import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_solution_challenge/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {

  final emailTextController = TextEditingController();
  final passTextController = TextEditingController();

  void signUp() async {

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailTextController.text, password: passTextController.text);
    } on FirebaseAuthException catch (e){
      showDialog(context: context, builder: ((context) => AlertDialog(
        title: Text("Weak Password!"),
      )));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 2, 48, 32),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(
                    height: 200,
                  ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("FireWall Anti-Fire App!", style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w500),),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(fontSize: 15,color: Colors.white),
                    controller: emailTextController,
                    decoration: const InputDecoration(
                      hintText: "E-mail",
                      hintStyle: TextStyle(fontSize: 15,color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    controller: passTextController,
                    style: TextStyle(fontSize: 15,color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 15,color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )
                      ),
                    ),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                  onPressed: signUp, 
                  child: Container(
                 child: Text("Create An Account!", style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500))),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  }, 
                  child: Container(
                 child: Text("Back to Main Page! ", style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500))),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}