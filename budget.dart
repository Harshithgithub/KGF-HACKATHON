import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'budget_history.dart';

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  // TextEditingController nameCont = TextEditingController();
  TextEditingController totalamountcont = TextEditingController();
  TextEditingController amountinvestedcont = TextEditingController();
  TextEditingController otherexpensescont = TextEditingController();
  TextEditingController returnoninvestmentcont = TextEditingController();
  TextEditingController profitmargincont = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    // nameCont.dispose();
    totalamountcont.dispose();
    amountinvestedcont.dispose();
    otherexpensescont.dispose();
    returnoninvestmentcont.dispose();
    profitmargincont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 238, 240),
      body: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                maxLines: 1,
                controller: totalamountcont,
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
                  hintText: 'total amount',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                maxLines: 1,
                controller: amountinvestedcont,
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
                  hintText: 'amount invested',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                maxLines: 1,
                controller: otherexpensescont,
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
                  hintText: 'other expenses',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                maxLines: 1,
                controller: returnoninvestmentcont,
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
                  hintText: 'return on investment',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Center(
            child: SizedBox(
              width: 270,
              child: TextField(
                maxLines: 1,
                controller: profitmargincont,
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
                  hintText: 'profit margin',
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 228, 230),
                ),
              ),
            ),
          ),

          // ElevatedButton(
          //     onPressed: () {
          //       myPut();
          //     },
          //     child: const Text('submit'))
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BudgetHistory()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 15, right: 15, bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
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
                      'history',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> myPut() async {
    CollectionReference em =
        FirebaseFirestore.instance.collection('farmingBudget');
    try {
      await em.add({
        'total amount': totalamountcont.text,
        'amount invested': amountinvestedcont.text,
        'other expense': otherexpensescont.text,
        'return on expenses': returnoninvestmentcont.text,
        'profit margin': profitmargincont.text
      });
    } catch (e) {
      print('$e');
    }

    totalamountcont.text = '';
    amountinvestedcont.text = '';
    otherexpensescont.text = '';
    returnoninvestmentcont.text = '';
    profitmargincont.text = '';
  }
}
