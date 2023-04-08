import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OnlineMessage extends StatefulWidget {
  const OnlineMessage({super.key});

  @override
  State<OnlineMessage> createState() => _OnlineMessageState();
}

class _OnlineMessageState extends State<OnlineMessage> {
  TextEditingController nameCont = TextEditingController();
  // TextEditingController ageCont = TextEditingController();
  TextEditingController probCont = TextEditingController();
  // TextEditingController needCont = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameCont.dispose();
    // ageCont.dispose();
    probCont.dispose();
    // needCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 238, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 96, 146),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Online Communication',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: SizedBox(
                width: 270,
                child: TextField(
                  maxLines: 2,
                  controller: nameCont,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 6, 22), width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 6, 22), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 6, 22), width: 2)),
                    hintText: 'please enter problem',
                    filled: true,
                    fillColor: Color.fromARGB(255, 233, 228, 230),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 270,
                child: TextField(
                  maxLines: 7,
                  controller: probCont,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 6, 22), width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 6, 22), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 6, 22), width: 2)),
                    hintText: 'Please leave your message here  ',
                    filled: true,
                    fillColor: Color.fromARGB(255, 233, 228, 230),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       myPut();
            //     },
            //     child: const Text(
            //       'submit',
            //     )),
            InkWell(
              onTap: () {
                myPut();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 15, right: 15, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      color: const Color.fromARGB(255, 226, 193, 230),
                      border: Border.all(
                          color: const Color.fromARGB(255, 142, 113, 196),
                          width: 3),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 37, 36, 36),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 5))
                      ]),
                  child: const Text(
                    'submit',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> myPut() async {
    CollectionReference em =
        FirebaseFirestore.instance.collection('onlineMessages');
    try {
      await em.add({'problem': nameCont.text, 'message': probCont.text});
    } catch (e) {
      print('$e');
    }
    nameCont.text = '';

    probCont.text = '';
  }
}
