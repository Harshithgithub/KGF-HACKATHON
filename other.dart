import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feedback.dart';
// import 'package:flutter_application_1/myTest.dart';

class Others extends StatefulWidget {
  const Others({super.key});

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 94, 96, 146),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Text(
            'Others',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('othImage').snapshots(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) => MyFeedback(
                        mySave: () {
                          saveData(snapshot.data!.docs[index].get('url'),
                              snapshot.data!.docs[index].get('content'));
                        },
                        myPress: () {},
                        sr: snapshot.data!.docs[index].get('url'),
                        tx: snapshot.data!.docs[index].get('content'),
                      ));
            },
          ),
        ));
  }

  Future<void> saveData(String url, String content) {
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('saveImageData');
    return _collectionRef.add({'url': url, 'content': content});
  }
}
