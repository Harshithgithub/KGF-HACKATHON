import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FarmerCommunity extends StatefulWidget {
  const FarmerCommunity({super.key});

  @override
  State<FarmerCommunity> createState() => _FarmerCommunityState();
}

class _FarmerCommunityState extends State<FarmerCommunity> {
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
                  .collection('communityMessage')
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
                              left: 100, bottom: 2, top: 2, right: 10),
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
                              child: Text(
                                snapshot.data!.docs[index].get('mssg'),
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 14.0, right: 16),
            child: TextField(
              maxLines: 1,
              controller: mssgCont,
              decoration: const InputDecoration(
                hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 6, 22), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 6, 22), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 6, 22), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                hintText: 'type..... ',
                filled: true,
                fillColor: Color.fromARGB(255, 233, 228, 230),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 94, 96, 146),
          child: const Icon(Icons.arrow_forward),
          onPressed: () {
            myPut();
          }),
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
