import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/core/constants.dart';
import 'package:postory_theme/core/svgs.dart';

void main() {
  String getPath(String name) {
    return name.substring(assetPrefix.length);
  }

  group('PostorySvgs', () {
    group('color_privite', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.color_privite));
        expect(actual.existsSync(), true);
      });
    });

    group('color_public', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.color_public));
        expect(actual.existsSync(), true);
      });
    });

    group('fail', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.fail));
        expect(actual.existsSync(), true);
      });
    });

    group('inbox_all', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.inbox_all));
        expect(actual.existsSync(), true);
      });
    });

    group('inbox_email', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.inbox_email));
        expect(actual.existsSync(), true);
      });
    });

    group('inbox_good', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.inbox_good));
        expect(actual.existsSync(), true);
      });
    });

    group('inbox_lock', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.inbox_lock));
        expect(actual.existsSync(), true);
      });
    });

    group('inbox_only', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.inbox_only));
        expect(actual.existsSync(), true);
      });
    });

    group('inbox_others', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.inbox_others));
        expect(actual.existsSync(), true);
      });
    });

    group('inbox_star', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.inbox_star));
        expect(actual.existsSync(), true);
      });
    });

    group('locate', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.locate));
        expect(actual.existsSync(), true);
      });
    });

    group('notify_off', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.notify_off));
        expect(actual.existsSync(), true);
      });
    });

    group('notify_on', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.notify_on));
        expect(actual.existsSync(), true);
      });
    });

    group('point', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.point));
        expect(actual.existsSync(), true);
      });
    });

    group('post_hand', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.post_hand));
        expect(actual.existsSync(), true);
      });
    });

    group('post_point', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.post_point));
        expect(actual.existsSync(), true);
      });
    });

    group('postory', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.postory));
        expect(actual.existsSync(), true);
      });
    });

    group('send_digital', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.send_digital));
        expect(actual.existsSync(), true);
      });
    });

    group('send_real', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.send_real));
        expect(actual.existsSync(), true);
      });
    });

    group('success', () {
      test('should get a SVG file', () {
        final actual = File(getPath(PostorySvgs.success));
        expect(actual.existsSync(), true);
      });
    });
  });
}
