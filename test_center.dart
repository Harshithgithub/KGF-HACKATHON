import 'package:flutter/material.dart';

class TestingPage extends StatefulWidget {
  final String name;
  const TestingPage({super.key, required this.name});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 213, 214),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 46, 49, 146),
        centerTitle: true,
        title: Text(
          widget.name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            'Welcome',
            style:
                TextStyle(fontSize: 29, color: Color.fromARGB(255, 107, 7, 40)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 3, color: Color.fromARGB(255, 46, 49, 146)),
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: const Color.fromARGB(255, 97, 153, 148),
            title: Text(
              widget.name,
              style: const TextStyle(fontSize: 24),
            ),
            leading: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 3, color: Color.fromARGB(255, 46, 49, 146)),
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: const Color.fromARGB(255, 97, 153, 148),
            title: const Text(
              "our team",
              style: TextStyle(fontSize: 24),
            ),
            leading: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 3, color: Color.fromARGB(255, 46, 49, 146)),
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: const Color.fromARGB(255, 97, 153, 148),
            title: const Text(
              "check Ups",
              style: TextStyle(fontSize: 24),
            ),
            leading: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 3, color: Color.fromARGB(255, 46, 49, 146)),
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: const Color.fromARGB(255, 97, 153, 148),
            title: const Text(
              "Testing",
              style: TextStyle(fontSize: 24),
            ),
            leading: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.black,
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
                  color: const Color.fromARGB(255, 142, 113, 196), width: 3),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 37, 36, 36),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 5))
              ]),
          width: 330,
          height: 130,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.name,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Contact us : 6396937375',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Mail us : anoop',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
