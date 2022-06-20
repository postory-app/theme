// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'constants.dart';

class PostorySvgs {
  PostorySvgs._();

  static final color_privite = _svg('color-privite.svg');
  static final color_public = _svg('color-public.svg');
  static final fail = _svg('fail.svg');
  static final inbox_all = _svg('inbox_all.svg');
  static final inbox_email = _svg('inbox_email.svg');
  static final inbox_good = _svg('inbox_good.svg');
  static final inbox_lock = _svg('inbox_lock.svg');
  static final inbox_only = _svg('inbox_only.svg');
  static final inbox_others = _svg('inbox_others.svg');
  static final inbox_star = _svg('inbox_star.svg');
  static final locate = _svg('locate.svg');
  static final notify_off = _svg('notify_off.svg');
  static final notify_on = _svg('notify_on.svg');
  static final point = _svg('point.svg');
  static final post_hand = _svg('post_hand.svg');
  static final post_point = _svg('post_point.svg');
  static final postory = _svg('POSTORY.svg');
  static final send_digital = _svg('send_digital.svg');
  static final send_real = _svg('send_real.svg');
  static final success = _svg('success.svg');

  static String _svg(String name) => '${assetPrefix}svgs/$name';
}
