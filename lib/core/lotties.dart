// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'constants.dart';

class PostoryLotties {
  PostoryLotties._();

  static final point = _lottie('point.json');

  static String _lottie(String name) => '${assetPrefix}lotties/$name';
}
