import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/core/constants.dart';
import 'package:postory_theme/core/svgs.dart';

void main() {
  String getPath(String name) {
    return name.substring(assetPrefix.length);
  }

  test('should get a `color_privite` SVG file', () {
    final actual = File(getPath(PostorySvgs.color_privite));
    expect(actual.existsSync(), true);
  });
  test('should get a `color_public` SVG file', () {
    final actual = File(getPath(PostorySvgs.color_public));
    expect(actual.existsSync(), true);
  });
  test('should get a `fail` SVG file', () {
    final actual = File(getPath(PostorySvgs.fail));
    expect(actual.existsSync(), true);
  });
  test('should get a `inbox_all` SVG file', () {
    final actual = File(getPath(PostorySvgs.inbox_all));
    expect(actual.existsSync(), true);
  });
  test('should get a `inbox_email` SVG file', () {
    final actual = File(getPath(PostorySvgs.inbox_email));
    expect(actual.existsSync(), true);
  });
  test('should get a `inbox_good` SVG file', () {
    final actual = File(getPath(PostorySvgs.inbox_good));
    expect(actual.existsSync(), true);
  });
  test('should get a `inbox_lock` SVG file', () {
    final actual = File(getPath(PostorySvgs.inbox_lock));
    expect(actual.existsSync(), true);
  });
  test('should get a `inbox_only` SVG file', () {
    final actual = File(getPath(PostorySvgs.inbox_only));
    expect(actual.existsSync(), true);
  });
  test('should get a `inbox_others` SVG file', () {
    final actual = File(getPath(PostorySvgs.inbox_others));
    expect(actual.existsSync(), true);
  });
  test('should get a `inbox_star` SVG file', () {
    final actual = File(getPath(PostorySvgs.inbox_star));
    expect(actual.existsSync(), true);
  });
  test('should get a `locate` SVG file', () {
    final actual = File(getPath(PostorySvgs.locate));
    expect(actual.existsSync(), true);
  });
  test('should get a `notify_off` SVG file', () {
    final actual = File(getPath(PostorySvgs.notify_off));
    expect(actual.existsSync(), true);
  });
  test('should get a `notify_on` SVG file', () {
    final actual = File(getPath(PostorySvgs.notify_on));
    expect(actual.existsSync(), true);
  });
  test('should get a `point` SVG file', () {
    final actual = File(getPath(PostorySvgs.point));
    expect(actual.existsSync(), true);
  });
  test('should get a `post_hand` SVG file', () {
    final actual = File(getPath(PostorySvgs.post_hand));
    expect(actual.existsSync(), true);
  });
  test('should get a `post_point` SVG file', () {
    final actual = File(getPath(PostorySvgs.post_point));
    expect(actual.existsSync(), true);
  });
  test('should get a `postory` SVG file', () {
    final actual = File(getPath(PostorySvgs.postory));
    expect(actual.existsSync(), true);
  });
  test('should get a `send_digital` SVG file', () {
    final actual = File(getPath(PostorySvgs.send_digital));
    expect(actual.existsSync(), true);
  });
  test('should get a `send_real` SVG file', () {
    final actual = File(getPath(PostorySvgs.send_real));
    expect(actual.existsSync(), true);
  });
  test('should get a `success` SVG file', () {
    final actual = File(getPath(PostorySvgs.success));
    expect(actual.existsSync(), true);
  });
}
