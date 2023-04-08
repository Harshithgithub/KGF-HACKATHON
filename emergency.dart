import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  TextEditingController nameCont = TextEditingController();
  TextEditingController ageCont = TextEditingController();
  TextEditingController probCont = TextEditingController();
  TextEditingController needCont = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameCont.dispose();
    ageCont.dispose();
    probCont.dispose();
    needCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 238, 240),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
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
                  hintText: 'enter crop name',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                controller: ageCont,
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
                  hintText: 'enter crop age',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                controller: needCont,
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
                  hintText: 'materials requirement',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                maxLines: 1,
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
                  hintText: 'enter emergency ',
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
          //     child: const Text('submit'))

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
                        width: 2),
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
    );
  }

  Future<void> myPut() async {
    CollectionReference em = FirebaseFirestore.instance.collection('emergency');
    try {
      await em.add({
        'name': nameCont.text,
        'age': ageCont.text,
        'need': needCont.text,
        'prob': probCont.text
      });
    } catch (e) {
      print('$e');
    }
    nameCont.text = '';
    ageCont.text = '';
    needCont.text = '';
    probCont.text = '';
  }
}
