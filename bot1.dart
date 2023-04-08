import 'package:flutter/material.dart';
import 'package:flutter_application_1/government_subsidies.dart';
import 'package:flutter_application_1/crop_disease.dart';
import 'package:flutter_application_1/medicines.dart';
// import 'package:flutter_application_1/onlineChat.dart';
import 'package:flutter_application_1/onlineMessage.dart';
import 'package:flutter_application_1/other.dart';
import 'package:flutter_application_1/farming_image.dart';
import 'package:flutter_application_1/soil_testing.dart';
import 'package:flutter_application_1/weather_forcast.dart';

import 'farmer_community.dart';

class Bot1 extends StatefulWidget {
  const Bot1({super.key});

  @override
  State<Bot1> createState() => _Bot1State();
}

class _Bot1State extends State<Bot1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 142, 113, 196),
                ),
                height: 80,
                // color: Color.fromARGB(255, 142, 113, 196),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 226, 193, 230),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Hiii User ',
                      style: TextStyle(
                          fontSize: 26,
                          color: Color.fromARGB(255, 252, 251, 249)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Farming Tips',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FarmingImage()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Crop Disease',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MedicalHistory()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Weather Forcast',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WeatherForcast()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Gov. subsidies',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GovernmentSubsidies()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Soil Testing',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SoilTesting()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Online Chat',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OnlineMessage()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Medicines',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Medicines()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Farmer Community',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FarmerCommunity()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                child: Ink(
                  height: 100,
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Others',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      leading: const Icon(
                        Icons.medication,
                        size: 34,
                        color: Color.fromARGB(255, 36, 4, 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Others()));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
