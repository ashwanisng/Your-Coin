import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';

Widget getProgressIndicator() => CircularProgressIndicator.adaptive(
      valueColor: AlwaysStoppedAnimation(Env.colors.leafGreen),
    );

// _showCircularLoader(GlobalService _globalController) {
//   final loader = AspectRatio(
//     aspectRatio: 1,
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: getProgressIndicator(),
//     ),
//   );

//   if (!_globalController.loaderOpened)
//     Get.dialog(
//       Center(
//         child: SizedBox.fromSize(
//           size: Size.square(100.0),
//           child: FittedBox(
//             child: AlertDialog(
//               content: loader,
//             ),
//           ),
//         ),
//       ),
//       barrierDismissible: false,
//     );
// }
