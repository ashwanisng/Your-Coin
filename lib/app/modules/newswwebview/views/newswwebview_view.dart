import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:your_coin/app/modules/newswwebview/controllers/newswwebview_controller.dart';

class NewswwebviewView extends GetView<NewswwebviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewswwebviewView'),
        centerTitle: true,
      ),
      body: controller.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: WebView(
                initialUrl: controller.url,
                onWebViewCreated: ((WebViewController webViewController) {
                  controller.completer.complete(webViewController);
                }),
              ),
            ),
    );
  }
}
