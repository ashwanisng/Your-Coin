import 'package:your_coin/app/enviroment/utils/colors.dart';

class Env {
  final ColorsStyle colorsStyle = ColorsStyle();

  Env._();

  static final Env _instance = Env._();

  static Env get I => _instance;

  static ColorsStyle get colors => I.colorsStyle;
}
