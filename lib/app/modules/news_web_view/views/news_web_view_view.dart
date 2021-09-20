import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:your_coin/app/modules/news_web_view/controllers/news_web_view_controller.dart';

class NewsWebViewView extends GetView<NewsWebViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
