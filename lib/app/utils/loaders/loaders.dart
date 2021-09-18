import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';

Widget getProgressIndicator() => CircularProgressIndicator.adaptive(
      valueColor: AlwaysStoppedAnimation(Env.colors.leafGreen),
    );
