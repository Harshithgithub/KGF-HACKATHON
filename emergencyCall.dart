import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EmergencyCall extends StatefulWidget {
  const EmergencyCall({super.key});

  @override
  State<EmergencyCall> createState() => _EmergencyCallState();
}

class _EmergencyCallState extends State<EmergencyCall> {
  Color cl = const Color.fromARGB(255, 245, 244, 250);
  Color fcl = const Color.fromARGB(255, 17, 2, 17);

  @override
  Widget build(BuildContext context) {
    // myContext() {
    //   showDialog<void>(
    //     context: context,
    //     barrierDismissible: false, // user must tap button!
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: const Text('AlertDialog Title'),
    //         content: SingleChildScrollView(
    //           child: ListBody(
    //             children: const <Widget>[
    //               Text('This is a demo alert dialog.'),
    //               Text('Would you like to approve of this message?'),
    //             ],
    //           ),
    //         ),
    //         actions: <Widget>[
    //           TextButton(
    //             child: const Text('Approve'),
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 226, 228),
      body: Center(
        child: InkWell(
          onTap: () {
            cal();
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                border: Border.all(width: 4),
                color: cl),
            height: 100,
            width: 270,
            child: Center(
                child: Text(
              'Get Emergency Solution',
              style: TextStyle(
                  fontSize: 22, color: fcl, fontWeight: FontWeight.w500),
            )),
          ),
        ),
      ),
    );
  }

  Future<void> cal() async {
    try {
      setState(() {
        cl = const Color.fromARGB(255, 78, 73, 153);
        fcl = Colors.white;
      });
      CollectionReference an =
          FirebaseFirestore.instance.collection('emergencyCall');
      await an.add({
        'phone no': "6396937375",
        'location':
            'Vellore Institute of technology ,VIJAYAWADA ANDHRA PRADESH '
      });
    } catch (error) {
      print('$error');
    }
  }
}
