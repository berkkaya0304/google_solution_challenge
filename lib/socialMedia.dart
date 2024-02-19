import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_solution_challenge/components/wall_post.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMedia();
}

class _SocialMedia extends State<SocialMedia> {

final currentUser = FirebaseAuth.instance.currentUser!;

  final textController =  TextEditingController();

  @override
  Widget build(BuildContext context) {

    void postMessage() {
       if(textController.text.isNotEmpty){
          FirebaseFirestore.instance.collection("User Posts").add({
            'UserEmail': currentUser.email,
            'Message': textController.text,
            'Timestamp': Timestamp.now(),
          });
       }
    }

    return Scaffold(
      backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('Firewall Anti-Fire App', style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w500),),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection("User Posts")
                .orderBy("Timestamp",descending: false)
                .snapshots(),
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: ((context, index) {
                      final post = snapshot.data!.docs[index];
                      return WallPost(message: post['Message'], user: post['UserEmail']);
                    }));
                  } else if(snapshot.hasError){
                    return Center(child: Text('Error:${snapshot.error}'),);
                  }
                  return const Center(child: CircularProgressIndicator(),);
                }
                ,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Expanded(child: TextField(
                    controller:textController,
                    decoration: const InputDecoration(
                        hintText: "Write Something About Jungles!",
                        hintStyle: TextStyle(fontSize: 15,color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )
                        ),
                      )
                  ),),
                  IconButton(
                    onPressed: postMessage,
                    icon: const Icon(Icons.arrow_circle_up),
                    )
                ],
              ),
            ),

            Text("Logged in as:" + currentUser.email!),
          ],
        )
      );
  }
}