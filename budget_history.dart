import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BudgetHistory extends StatefulWidget {
  const BudgetHistory({super.key});

  @override
  State<BudgetHistory> createState() => _BudgetHistoryState();
}

class _BudgetHistoryState extends State<BudgetHistory> {
  TextEditingController mssgCont = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    mssgCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 96, 146),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Farmers Community',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('farmingBudget')
                  .snapshots(),
              builder: (context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              left: 50, bottom: 5, top: 5, right: 50),
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12, top: 12, bottom: 12),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color.fromARGB(255, 229, 216, 253),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 37, 36, 36),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 5))
                                ]),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    snapshot.data!.docs[index]
                                        .get('amount invested'),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    snapshot.data!.docs[index]
                                        .get('other expense'),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    snapshot.data!.docs[index]
                                        .get('profit margin'),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    snapshot.data!.docs[index]
                                        .get('return on expenses'),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    snapshot.data!.docs[index]
                                        .get('total amount'),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> myPut() async {
    CollectionReference em =
        FirebaseFirestore.instance.collection('communityMessage');
    try {
      await em.add({'mssg': mssgCont.text});
    } catch (e) {
      print('$e');
    }
    mssgCont.text = '';
  }
}
