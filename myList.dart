import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String ttl;
  final Function() onMyTap;
  const MyList({super.key, required this.ttl, required this.onMyTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      tileColor: const Color.fromARGB(255, 121, 184, 178),
      leading: const Icon(
        Icons.send_outlined,
        size: 28,
        color: Color.fromARGB(255, 27, 3, 11),
      ),
      title: Text(
        ttl,
        style: const TextStyle(
          fontSize: 21,
          color: Color.fromARGB(255, 27, 3, 11),
        ),
      ),
      subtitle: const Text(
        'medical and health center',
        style: TextStyle(
          fontSize: 17,
          color: Color.fromARGB(255, 253, 252, 184),
        ),
      ),
      trailing: const Icon(
        Icons.more_vert,
        size: 28,
        color: Color.fromARGB(255, 27, 3, 11),
      ),
      onTap: onMyTap,
    );
  }
}
