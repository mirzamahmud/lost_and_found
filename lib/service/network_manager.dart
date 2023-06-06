import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  int connectionType = 0;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _streamSubscription;

  @override
  void onInit() {
    getConnectionType();
    _streamSubscription = _connectivity.onConnectivityChanged.listen(_updateStatus);
  }

  Future<void> getConnectionType() async {
    var connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (e) {
      print(e);
    }
    return _updateStatus(connectivityResult);
  }

  _updateStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType = 1;
        update();
        break;
      case ConnectivityResult.mobile:
        connectionType = 2;
        update();
        break;
      case ConnectivityResult.none:
        connectionType = 0;
        update();
        break;
      default:
        Get.snackbar('Network Error!', 'Please check your internet connection');
        break;
    }
  }

  @override
  void onClose() {
    //stop listening to network state when app is closed
    _streamSubscription.cancel();
  }
}