import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:transparent_image/transparent_image.dart';

class MyFeedback extends StatefulWidget {
  final String sr;
  final String tx;
  final Function() myPress;
  final Function() mySave;

  const MyFeedback(
      {super.key,
      required this.sr,
      required this.tx,
      required this.myPress,
      required this.mySave});

  @override
  State<MyFeedback> createState() => _MyFeedbackState();
}

class _MyFeedbackState extends State<MyFeedback> {
  IconData ic = Icons.bookmark_border;
  Color cl = Colors.black;
  IconData ic1 = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      color: const Color.fromARGB(255, 244, 248, 248),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 241, 204, 227),
              radius: 30,
              child: Icon(
                Icons.person_outline_sharp,
                color: Color.fromARGB(255, 102, 91, 91),
                size: 35,
              ),
            ),
            title: const Text(
              'Kra-C',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: const Text(
              'Farming Tips',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
              icon: const Icon(
                Icons.delete_outline_rounded,
                color: Colors.black,
                size: 27,
              ),
              onPressed: widget.myPress,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          // Image.network(sr),
          // FadeInImage.memoryNetwork(
          //   placeholder: kTransparentImage,
          //   image: sr,
          // ),
          Expanded(
            child: Container(
              width: 360.0,
              height: 540.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    widget.sr,
                    cacheManager: CacheManager(
                      Config(
                        'cacheKey',
                        stalePeriod: const Duration(days: 7),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    cl = Colors.pink;
                    ic1 = Icons.favorite;
                  });
                },
                icon: Icon(
                  ic1,
                  size: 28,
                  color: cl,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_outlined,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send_outlined,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 140,
              ),
              IconButton(
                icon: Icon(
                  ic,
                  size: 28,
                ),
                onPressed: () {
                  widget.mySave();
                  setState(() {
                    ic = Icons.bookmark;
                  });
                },
              )
            ],
          ),
          const Divider(
            height: 1,
            thickness: 2,
            color: Color.fromARGB(255, 70, 63, 63),
          )
        ],
      ),
    );
  }
}
