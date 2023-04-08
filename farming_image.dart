import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feedback.dart';
// import 'package:flutter_application_1/myTest.dart';

class FarmingImage extends StatefulWidget {
  const FarmingImage({super.key});

  @override
  State<FarmingImage> createState() => _FarmingImageState();
}

class _FarmingImageState extends State<FarmingImage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 94, 96, 146),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Text(
            'Farming Tips',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('pregImage').snapshots(),
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
                        myPress: () {
                          deleteData(snapshot.data!.docs[index].id);
                        },
                        sr: snapshot.data!.docs[index].get('url'),
                        tx: snapshot.data!.docs[index].get('content'),
                      ));
            },
          ),
        ));
  }

  Future<void> deleteData(String pth) {
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('pregImage');
    return _collectionRef.doc(pth).delete();
  }

  Future<void> saveData(String url, String content) {
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('saveImageData');
    return _collectionRef.add({'url': url, 'content': content});
  }
}
