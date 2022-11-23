import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

class map extends StatefulWidget {
  const map({Key? key}) : super(key: key);

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
  Completer<GoogleMapController> _cont = Completer();
  Uint8List? markerimage;
  List<Marker> _marker = [];

  List<String> pic = [
    'lib/Image/police.png',
    'lib/Image/fire.png',
    'lib/Image/hospital.png',
    'lib/Image/hospital.png',
    'lib/Image/hospital.png',
    'lib/Image/hospital.png',

  ];
  List<LatLng> latlng = [
    LatLng(22.501685105572733,91.80798391108782),
    LatLng(21.9922465,91.952365),
    LatLng(22.500979283069185, 91.81086231233354),
    LatLng(22.366568705070943, 91.82831446345075),
    LatLng(22.347440252033085, 91.83834838699958),
    LatLng(22.363844870801618, 91.83080714889495)
  ];
  List<String> nam = [
    'Hathazari Police Station',
    'বাাঁশখালী ফায়ার সার্ভিস',
    'হাটহাজারী ডায়াবেটিক হাসপাতাল',
    'CSCR (Pvt.) Ltd.(Hospital & Diagnostic Center)',
    'চট্টগ্রাম ২৫০ শয্যা জেনারেল হাসপাতাল',
    'Chttagong Medical College Hospital'
  ];

  Future<Uint8List> getbyte(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    for (int i = 0; i < latlng.length; i++) {
      final Uint8List markericon = await getbyte(pic[i], 100);
      _marker.add(Marker(
          position: latlng[i],
          markerId: MarkerId(i.toString()),
          icon: BitmapDescriptor.fromBytes(markericon),
          infoWindow: InfoWindow(title: nam[i])));
    }
  }

  static final CameraPosition pos = const CameraPosition(
      target: LatLng(22.51533462074926, 91.794593961524534), zoom: 5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _cont.complete(controller);
        },
        markers: Set<Marker>.of(_marker),
        initialCameraPosition: pos,
        compassEnabled: true,
        buildingsEnabled: false,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () async {
          setState(() {});
          GoogleMapController controller = await _cont.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(22.51533462074926, 91.79459396152453),
                  zoom: 14)));
        },
        child: Icon(Icons.my_location),
      ),
    );
  }
}
