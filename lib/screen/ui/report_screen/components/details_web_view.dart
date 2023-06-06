import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../service/remote_services.dart';

class DetailsWebView extends StatefulWidget {
  const DetailsWebView({Key? key}) : super(key: key);

  @override
  State<DetailsWebView> createState() => _DetailsWebViewState();
}

class _DetailsWebViewState extends State<DetailsWebView> {

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    var id = Get.arguments;
    return SafeArea(
      child: WebView(
        initialUrl: RemoteServices.baseUrl! + 'LostFound/Search/GDPrintViewForOthers/$id',
      ),
    );
  }
}

