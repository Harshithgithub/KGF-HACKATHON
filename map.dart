import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myList.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  State<MyMap> createState() => MyMapState();
}

class MyMapState extends State<MyMap> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(16.4941637, 80.5007007),
    zoom: 14.4746,
  );
  MapType my = MapType.hybrid;

  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    con1.dispose();
    con2.dispose();
  }

  static const CameraPosition h1 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(15.783968153562729, 77.47240553907582),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h2 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.26911346623317, 80.44035217771584),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h3 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.494301784525554, 80.65270944093184),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h4 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.36996673051015, 80.43158645442425),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h5 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.640395503239095, 80.6150046991692),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h6 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.30721163036209, 80.41343973908202),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h7 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.470291737932794, 80.71808209675474),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h8 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(17.453307621039198, 78.56177845259052),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h9 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.52172210599105, 80.6538591697675),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h10 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.52858935520035, 80.59919465442619),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);
  static const CameraPosition h11 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(23, 80.59919465442619),
      tilt: 10.440717697143555,
      zoom: 18.151926040649414);

  int _currentValue = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 94, 96, 146),
        title: const Text(
          'google maps',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: const Color.fromARGB(255, 218, 216, 224),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    context: context,
                    builder: (context) => SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Choose Testing Lab',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Divider(
                                  thickness: 3,
                                  color: Color.fromARGB(255, 71, 67, 67),
                                  indent: 35,
                                  endIndent: 35,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'AP State Soil Testin ',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h1);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Amaravathi Labs pvt',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h2);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'THANDAVAKRISHNA GEOTECH CO',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h3);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'NUTHALAPATI QUALITY CONTROL',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h4);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'PLANET GEM TESTING LAB',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h5);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'R V Labs',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h6);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'sri shiridi sai soil testings',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h7);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Accurate Labs',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h8);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Sp water &soil testing',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h9);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyList(
                                  ttl: 'Vignana Bharat Laboratory',
                                  onMyTap: () {
                                    Navigator.pop(context);
                                    campos(h10);
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ));
              },
              icon: const Icon(Icons.search_outlined)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: GoogleMap(
        mapType: my,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: set,
        label: const Text('Change Vision'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> campos(CameraPosition cp) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cp));
  }

  void set() {
    if (my == MapType.normal) {
      setState(() {
        my = MapType.hybrid;
      });
    } else {
      setState(() {
        my = MapType.normal;
      });
    }
  }
}
