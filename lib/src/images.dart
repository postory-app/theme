// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';

import 'constants.dart';

class PostoryImages {
  PostoryImages._();
  static final explore_main = _exploreImage('explore_main.png');
  static AssetImage _exploreImage(String name) => _image('explore/$name');

  static final payment_apple_pay = _paymentImage('ApplePay.png');
  static final payment_credit_card = _paymentImage('CreditCard.png');
  static final payment_default = _paymentImage('Default.png');
  static final payment_google_pay = _paymentImage('GooglePay.png');
  static final payment_jcb_color = _paymentImage('jcb-color.png');
  static final payment_jcb = _paymentImage('Jcb.png');
  static final payment_jko_pay = _paymentImage('JkopayPay.png');
  static final payment_line_pay = _paymentImage('LinePay.png');
  static final payment_master_color = _paymentImage('master-color.png');
  static final payment_mastercard = _paymentImage('Mastercard.png');
  static final payment_tappay = _paymentImage('tappay.png');
  static final payment_visa_color = _paymentImage('visa-color.png');
  static final payment_visa = _paymentImage('Visa.png');
  static AssetImage _paymentImage(String name) => _image('payment/$name');

  static final pocoin_mail_multi = _pocoinImage('mail_multi.png');
  static final pocoin_mail_single = _pocoinImage('mail_single.png');
  static final pocoin_top_up_1 = _pocoinImage('top_up_1.png');
  static final pocoin_top_up_2 = _pocoinImage('top_up_2.png');
  static final pocoin_top_up_3 = _pocoinImage('top_up_3.png');
  static final pocoin_top_up_banner = _pocoinImage('top_up_banner.png');
  static AssetImage _pocoinImage(String name) => _image('pocoin/$name');

  static final virtual_address_book_city = _virtualAddressImage('book_city.png');
  static final virtual_address_code_city = _virtualAddressImage('code_city.png');
  static final virtual_address_dog_city = _virtualAddressImage('dog_city.png');
  static final virtual_address_dream_city = _virtualAddressImage('dream_city.png');
  static final virtual_address_gold_city = _virtualAddressImage('gold_city.png');
  static final virtual_address_mars_city = _virtualAddressImage('mars_city.png');
  static final virtual_address_silicon_valley_city = _virtualAddressImage('silicon_valley_city.png');
  static final virtual_address_temp_road = _virtualAddressImage('temp_road.png');
  static final virtual_address_bg = _virtualAddressImage('virtual_address_bg.png');
  static AssetImage _virtualAddressImage(String name) => _image('virtual_address/$name');

  static AssetImage _image(String name) => AssetImage('images/$name', package: packageName);
}
