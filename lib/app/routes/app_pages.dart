import 'package:get/get.dart';

import 'package:your_coin/app/modules/auth_view/bindings/auth_view_binding.dart';
import 'package:your_coin/app/modules/auth_view/views/auth_view_view.dart';
import 'package:your_coin/app/modules/entry/bindings/entry_binding.dart';
import 'package:your_coin/app/modules/entry/views/entry_view.dart';
import 'package:your_coin/app/modules/home/bindings/home_binding.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';
import 'package:your_coin/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:your_coin/app/modules/sign_in/views/sign_in_view.dart';
import 'package:your_coin/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:your_coin/app/modules/sign_up/views/sign_up_view.dart';

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
    GetPage(
      name: _Paths.AUTH_VIEW,
      page: () => AuthViewView(),
      binding: AuthViewBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
