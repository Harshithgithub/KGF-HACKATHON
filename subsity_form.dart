import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SubsidyForm extends StatefulWidget {
  const SubsidyForm({super.key});

  @override
  State<SubsidyForm> createState() => _SubsidyFormState();
}

class _SubsidyFormState extends State<SubsidyForm> {
  // TextEditingController nameCont = TextEditingController();
  TextEditingController nameCont = TextEditingController();
  TextEditingController desCont = TextEditingController();
  TextEditingController reqCont = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    // nameCont.dispose();
    nameCont.dispose();
    desCont.dispose();
    reqCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 96, 146),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Subsidy Form',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 227, 238, 240),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                maxLines: 1,
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
                  hintText: 'enter full name',
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
                maxLines: 2,
                controller: desCont,
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
                  hintText: 'farming descriptions',
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
                maxLines: 4,
                controller: reqCont,
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
                  hintText: 'enter the requirement in detail',
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
    );
  }

  Future<void> myPut() async {
    CollectionReference em =
        FirebaseFirestore.instance.collection('subsidyFormDetails');
    try {
      await em.add({
        'name': nameCont.text,
        'requirements': desCont.text,
        'description': reqCont.text
      });
    } catch (e) {
      print('$e');
    }

    nameCont.text = '';
    desCont.text = '';
    reqCont.text = '';
  }
}
