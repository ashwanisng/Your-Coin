import 'dart:async';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewswwebviewController extends GetxController {
  //TODO: Implement NewswwebviewController

  final Completer<WebViewController> completer = Completer<WebViewController>();

  String? url = '';

  var isLoading = true;

  @override
  void onInit() {
    try {
      isLoading = true;
      dynamic data = Get.arguments;
      url = data.toString();
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
    }

    print('URL IS : $url');
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
