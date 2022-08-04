import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/src/constants.dart';
import 'package:postory_theme/src/lotties.dart';

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

    group('store_check', () {
      test('should get a file', () {
        final actual = File(getPath(PostoryLotties.store_check));
        expect(actual.existsSync(), true);
      });
    });

    group('store_loading', () {
      test('should get a file', () {
        final actual = File(getPath(PostoryLotties.store_loading));
        expect(actual.existsSync(), true);
      });
    });
  });
}
