import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:your_coin/app/modules/news/controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finance News"),
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.newsList.length,
              itemBuilder: (context, index) {
                final DateFormat formatter = DateFormat.yMMMd();
                final String formatted =
                    formatter.format(controller.newsList[index].publishedAt!);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/news-web-view',
                              arguments: controller.newsList[index].url);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Image.network(
                                  controller.newsList[index].urlToImage
                                      .toString(),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              controller.newsList[index].title.toString(),
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            SizedBox(height: 5),
                            Text(
                                controller.newsList[index].description
                                    .toString(),
                                style: Theme.of(context).textTheme.bodyText1),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  formatted,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                IconButton(
                                  onPressed: () {
                                    controller.shareFun(
                                        controller.newsList[index].url,
                                        controller.newsList[index].title!);
                                  },
                                  icon: Icon(
                                    CupertinoIcons.share,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
