import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_solution_challenge/firebase_options.dart';
import 'package:google_solution_challenge/otherMainPage.dart';
import 'package:google_solution_challenge/register_page.dart';
import 'package:google_sign_in/google_sign_in.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firewall Anti-Fire App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Firewall Anti-Fire App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final emailTextController = TextEditingController();
  final passTextController = TextEditingController();

  void SignIn() async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailTextController.text, password: passTextController.text);
    Navigator.push(context, MaterialPageRoute(builder: (context) => otherMainPage()));
    } on FirebaseAuthException catch (e){
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    }
  }

  static Future<User?> loginWithGoogle() async {
    final googleAccount = await GoogleSignIn().signIn();

    final googleAuth = await googleAccount?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );
    return userCredential.user;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 2, 48, 32),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
                    height: 50,
                  ),
            Container(
              child: Image.asset('assets/images/firewall.png')),
            const SizedBox(
                    height: 50,
                  ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome to FireWall Anti-Fire App!", style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w500),),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
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
                    style: TextStyle(color: Colors.white),
                    controller: passTextController,
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
                  onPressed: SignIn,
                  child: Container(
                 child: Text("Login", style: GoogleFonts.mavenPro(color: Colors.red,fontSize: 20, fontWeight: FontWeight.w500))),
                  )),
                  const SizedBox(
                    height: 20,
                  ),// Add some space between the image and the text
                  Center(
                    child: IconButton(
                      icon: Image.asset(
                      'assets/google_icon.png',
                      width: 48,
                      height: 48,
                    ),
                      onPressed:() async {
                        try{
                          final user = await loginWithGoogle();

                          if(user != null){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => otherMainPage()));
                          }
                        }on FirebaseAuthException catch (error) {
                          print(error);
                        }catch (error){
                          print(error);
                        }
                      },
                      ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  }, 
                  child: Container(
                 child: Text("Create Account! ", style: GoogleFonts.mavenPro(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500))),
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
