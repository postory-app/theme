import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'alias.dart';

final svgs = {
  'color_privite': MySvgs.color_privite,
  'color_public': MySvgs.color_public,
  'fail': MySvgs.fail,
  'inbox_all': MySvgs.inbox_all,
  'inbox_email': MySvgs.inbox_email,
  'inbox_good': MySvgs.inbox_good,
  'inbox_lock': MySvgs.inbox_lock,
  'inbox_only': MySvgs.inbox_only,
  'inbox_others': MySvgs.inbox_others,
  'inbox_star': MySvgs.inbox_star,
  'locate': MySvgs.locate,
  'notify_off': MySvgs.notify_off,
  'notify_on': MySvgs.notify_on,
  'point': MySvgs.point,
  'post_hand': MySvgs.post_hand,
  'post_point': MySvgs.post_point,
  'postory': MySvgs.postory,
  'send_digital': MySvgs.send_digital,
  'send_real': MySvgs.send_real,
  'success': MySvgs.success,
}.entries.toList(growable: false);

class SvgScreen extends StatelessWidget {
  const SvgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: svgs
              .map((svg) => SizedBox(
                    width: 128.0,
                    height: 64.0,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(svg.value, height: 32.0),
                          Text(svg.key),
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
