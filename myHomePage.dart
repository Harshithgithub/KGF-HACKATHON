import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/budget.dart';
import 'package:flutter_application_1/bot1.dart';
import 'package:flutter_application_1/emergency.dart';
import 'package:flutter_application_1/emergencyCall.dart';
// import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/test_center.dart';
// import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/map.dart';
import 'package:flutter_application_1/mySave.dart';

// import 'package:flutter_application_1/myTest.dart';
// import 'package:flutter_application_1/myTest2.dart';
// import 'package:flutter_application_1/pregnantImage.dart';
// import 'package:flutter_application_1/signIn.dart';
// import 'package:flutter_application_1/signUp.dart';
// import 'package:flutter_application_1/upload.dart';
// import 'package:flutter_application_1/num.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Bot1(),
    Emergency(),
    Budget(),
    EmergencyCall(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String imageUrl = '';
  String imageUrl1 = '';
  String imageUrl2 = '';
  String imageUrl3 = '';
  String imageUrl4 = '';
  String imageUrl5 = '';
  String imageUrl6 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: const Text(
          'Kra-C',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        shadowColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 94, 96, 146),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate());
              },
              icon: const Icon(
                Icons.search,
                size: 28,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MySave()));
              },
              icon: const Icon(
                Icons.bookmark_border,
              )),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    constraints: const BoxConstraints(maxHeight: 605),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    context: context,
                    builder: (context) => Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Upload Data',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  Weather();
                                },
                                title: const Text(
                                  'Weather',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  preg();
                                },
                                title: const Text(
                                  'Farming Tips',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  Soil();
                                },
                                title: const Text(
                                  'Soil Testing',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  med();
                                },
                                title: const Text(
                                  'Crop Disease',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  emg();
                                },
                                title: const Text(
                                  'Gov. Subsidies',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  onl();
                                },
                                title: const Text(
                                  'Online Chat',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  medi();
                                },
                                title: const Text(
                                  'Medicines',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 226, 193, 230),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 142, 113, 196),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onTap: () {
                                  oth();
                                },
                                title: const Text(
                                  'Others',
                                  style: TextStyle(fontSize: 19),
                                ),
                                leading: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ));
              },
              icon: const Icon(
                Icons.more_vert,
                size: 26,
              ))
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const MyMap()));
        },
        backgroundColor: const Color.fromARGB(255, 94, 96, 146),
        splashColor: Colors.pink,
        child: const Icon(Icons.map_outlined),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 211, 224, 224),
        width: 250,
        child: Column(children: [
          const SizedBox(
            height: 70,
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
            indent: 25,
            endIndent: 25,
          ),
          ListTile(
            onTap: () {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                builder: (BuildContext context, Widget? child) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: child!,
                  );
                },
              );
            },
            leading: const Icon(
              Icons.person_outlined,
              color: Colors.black,
              size: 28,
            ),
            title: const Text('Appointment Time'),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
            indent: 25,
            endIndent: 25,
          ),
          ListTile(
            onTap: () {
              _selectDate(context);
            },
            leading: const Icon(
              Icons.favorite_outline,
              color: Colors.black,
              size: 28,
            ),
            title: const Text('Appointment Date'),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
            indent: 25,
            endIndent: 25,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            leading: const Icon(
              Icons.cancel,
              color: Colors.black,
              size: 28,
            ),
            title: const Text('Sign Out'),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
            indent: 25,
            endIndent: 25,
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 94, 96, 146),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 28,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                size: 28,
              ),
              label: "add"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              size: 28,
            ),
            label: "profile",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.emergency_outlined,
                size: 28,
              ),
              label: "add"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 4,
        selectedItemColor: const Color.fromARGB(255, 17, 1, 7),
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> preg() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('pregData');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('pregImage');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> med() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('medData');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('medImage');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> emg() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    // final FirebaseAuth auth = FirebaseAuth.instance;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('subsidies');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('subsidies');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> onl() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    // final FirebaseAuth auth = FirebaseAuth.instance;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('onlData');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('onlImage');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> medi() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    // final FirebaseAuth auth = FirebaseAuth.instance;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('mediData');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('mediImage');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> oth() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    // final FirebaseAuth auth = FirebaseAuth.instance;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('othData');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('othImage');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> Soil() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    // final FirebaseAuth auth = FirebaseAuth.instance;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('soilTesting');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('soilImage');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> Weather() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    // print('${file?.path}');
    if (file == null) return;
    // final FirebaseAuth auth = FirebaseAuth.instance;
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('weatherforcast');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl1 = await referenceImageToUpload.getDownloadURL();
      CollectionReference an =
          FirebaseFirestore.instance.collection('weatherforcast');
      await an.add({'url': imageUrl1, 'content': ''});
    } catch (error) {
      print('$error');
    }
  }

  Future<void> deleteData() {
    // final user = Provider.of<Userr?>(context,listen: false);
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('othImage');
    return _collectionRef.doc('RGCILcEbHtESvLr173vC').delete();
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "AP State Soil Testing Laboratory",
    "Amaravathi Labs pvt. ltd",
    "THANDAVAKRISHNA GEOTECH CO",
    "NUTHALAPATI QUALITY CONTROL ",
    "PLANET GEM TESTING LAB",
    "MANGALAM CONSULTAN",
    "Soil and water Testing Laboratory",
    "R V Labs",
    "sri shiridi sai soil testing",
    "Accurate Labs",
    "Sp water &soil testing",
    "Vignana Bharat Laboratory",
    "Deputy executive engineer R & B Soil ",
    "YONTUS ANALYTICAL SER",
    "KRYSL LABS PVT LTD",
    "GEOTECHNIK SOIL TESTING CONS",
    "Annoor Test Labs & En",
    "Growel Aqua Labs",
    "DECCAN NDT & DT TESTIN",
    "Micro Aqua Lab"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.clear,
          color: Colors.black,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          trailing: const Icon(Icons.more_vert),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TestingPage(name: result)));
            },
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 3, color: Color.fromARGB(255, 46, 49, 146)),
                borderRadius: BorderRadius.circular(20),
              ),
              tileColor: const Color.fromARGB(255, 226, 193, 230),
              leading: const Icon(
                Icons.send_outlined,
                size: 28,
                color: Color.fromARGB(255, 27, 3, 11),
              ),
              title: Text(
                result,
                style: const TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                'Soil Testing center',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 56, 97, 48),
                ),
              ),
              trailing: const Icon(
                Icons.more_vert,
                size: 28,
                color: Color.fromARGB(255, 27, 3, 11),
              ),
            ),
          ),
        );
      },
    );
  }
}
