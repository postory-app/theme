import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'alias.dart';

final images = {
  'explore_main': MyImages.explore_main,
  'payment_apple_pay': MyImages.payment_apple_pay,
  'payment_credit_card': MyImages.payment_credit_card,
  'payment_default': MyImages.payment_default,
  'payment_google_pay': MyImages.payment_google_pay,
  'payment_jcb_color': MyImages.payment_jcb_color,
  'payment_jcb': MyImages.payment_jcb,
  'payment_jko_pay': MyImages.payment_jko_pay,
  'payment_line_pay': MyImages.payment_line_pay,
  'payment_master_color': MyImages.payment_master_color,
  'payment_mastercard': MyImages.payment_mastercard,
  'payment_tappay': MyImages.payment_tappay,
  'payment_visa_color': MyImages.payment_visa_color,
  'payment_visa': MyImages.payment_visa,
  'pocoin_mail_multi': MyImages.pocoin_mail_multi,
  'pocoin_mail_single': MyImages.pocoin_mail_single,
  'pocoin_top_up_1': MyImages.pocoin_top_up_1,
  'pocoin_top_up_2': MyImages.pocoin_top_up_2,
  'pocoin_top_up_3': MyImages.pocoin_top_up_3,
  'pocoin_top_up_banner': MyImages.pocoin_top_up_banner,
}.entries.toList(growable: false);

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: images
              .map((image) => SizedBox(
                    width: 256.0,
                    height: 128.0,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: image.value, height: 64.0),
                          Text(image.key),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
