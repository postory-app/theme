import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/src/images.dart';

typedef Images = PostoryImages;

void main() {
  bool is2xExists(File value) {
    final file = File("${value.parent.path}/2.0x/${basename(value.path)}");
    return file.existsSync();
  }

  bool is3xExists(File value) {
    final file = File("${value.parent.path}/3.0x/${basename(value.path)}");
    return file.existsSync();
  }

  group('PostoryImages', () {
    group('explore_main', () {
      test('should get the file', () {
        final acutal = File(Images.explore_main.assetName);

        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_apple_pay', () {
      test('should get the file', () {
        final acutal = File(Images.payment_apple_pay.assetName);

        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_credit_card', () {
      test('should get the file', () {
        final acutal = File(Images.payment_credit_card.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_default', () {
      test('should get the file', () {
        final acutal = File(Images.payment_default.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_google_pay', () {
      test('should get the file', () {
        final acutal = File(Images.payment_google_pay.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_jcb', () {
      test('should get the file', () {
        final acutal = File(Images.payment_jcb.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_jcb_color', () {
      test('should get the file', () {
        final acutal = File(Images.payment_jcb_color.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_jkopay_pay', () {
      test('should get the file', () {
        final acutal = File(Images.payment_jko_pay.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_line_pay', () {
      test('should get the file', () {
        final acutal = File(Images.payment_line_pay.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_masterc_color', () {
      test('should get the file', () {
        final acutal = File(Images.payment_master_color.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_mastercard', () {
      test('should get the file', () {
        final acutal = File(Images.payment_mastercard.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_tappay', () {
      test('should get the file', () {
        final acutal = File(Images.payment_tappay.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_visa', () {
      test('should get the file', () {
        final acutal = File(Images.payment_visa.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('payment_visa_color', () {
      test('should get the file', () {
        final acutal = File(Images.payment_visa_color.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('pocoin_mail_multi', () {
      test('should get the file', () {
        final acutal = File(Images.pocoin_mail_multi.assetName);

        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('pocoin_mail_single', () {
      test('should get the file', () {
        final acutal = File(Images.pocoin_mail_single.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('pocoin_top_up_1', () {
      test('should get the file', () {
        final acutal = File(Images.pocoin_top_up_1.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('pocoin_top_up_2', () {
      test('should get the file', () {
        final acutal = File(Images.pocoin_top_up_2.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('pocoin_top_up_3', () {
      test('should get the file', () {
        final acutal = File(Images.pocoin_top_up_3.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });

    group('pocoin_top_up_banner', () {
      test('should get the file', () {
        final acutal = File(Images.pocoin_top_up_banner.assetName);
        expect(acutal.existsSync(), true);
        expect(is2xExists(acutal), true);
        expect(is3xExists(acutal), true);
      });
    });
  });
}
