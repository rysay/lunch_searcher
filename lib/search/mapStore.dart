import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MapStore with ChangeNotifier {
  Completer<GoogleMapController> _controller = Completer();

  onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    notifyListeners();
  }
}
