import 'package:get/get.dart';

import 'package:your_coin/app/modules/entry/bindings/entry_binding.dart';
import 'package:your_coin/app/modules/entry/views/entry_view.dart';
import 'package:your_coin/app/modules/home/bindings/home_binding.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ENTRY;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ENTRY,
      page: () => EntryView(),
      binding: EntryBinding(),
    ),
  ];
}
