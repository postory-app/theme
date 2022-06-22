import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/core/constants.dart';
import 'package:postory_theme/core/lotties.dart';

void main() {
  String getPath(String name) {
    return name.substring(assetPrefix.length);
  }

  group('PostoryLotties', () {
    group('point', () {
      test('should get a file', () {
        final actual = File(getPath(PostoryLotties.point));
        expect(actual.existsSync(), true);
      });
    });
  });
}
