import 'package:flutter/material.dart';

import 'alias.dart';

final icons = {
  'alarm_new': MyIcons.alarm_new,
  'alarm': MyIcons.alarm,
  'arrow_down': MyIcons.arrow_down,
  'collection': MyIcons.collection,
  'group': MyIcons.group,
  'history': MyIcons.history,
  'like_line': MyIcons.like_line,
  'lock': MyIcons.lock,
  'like': MyIcons.like,
  'mailbox': MyIcons.mailbox,
  'message': MyIcons.message,
  'more': MyIcons.more,
  'play': MyIcons.play,
  'post_multi': MyIcons.post_multi,
  'private': MyIcons.private,
  'profile_add': MyIcons.profile_add,
  'profile_checked': MyIcons.profile_checked,
  'public': MyIcons.public,
  'profile_wait': MyIcons.profile_wait,
  'qr_code': MyIcons.qr_code,
  'sent': MyIcons.sent,
  'setting_account': MyIcons.setting_account,
  'setting_auth': MyIcons.setting_auth,
  'setting_best': MyIcons.setting_best,
  'setting_coin': MyIcons.setting_coin,
  'setting_eye': MyIcons.setting_eye,
  'setting_invite': MyIcons.setting_invite,
  'setting_lang': MyIcons.setting_lang,
  'setting_message': MyIcons.setting_message,
  'setting_notify': MyIcons.setting_notify,
  'setting_others': MyIcons.setting_others,
  'setting_people': MyIcons.setting_people,
  'setting_private': MyIcons.setting_private,
  'setting_public': MyIcons.setting_public,
  'setting_report': MyIcons.setting_report,
  'setting_pwd': MyIcons.setting_pwd,
  'story': MyIcons.story,
  'unlock': MyIcons.unlock,
  'write': MyIcons.write,
  'setting': MyIcons.setting,
  'chat': MyIcons.chat,
  'close': MyIcons.close,
  'locate': MyIcons.locate,
  'close_fill': MyIcons.close_fill,
  'check_fill': MyIcons.check_fill,
  'arrow_left': MyIcons.arrow_left,
  'arrow_right': MyIcons.arrow_right,
  'arrow_up': MyIcons.arrow_up,
  'v_address': MyIcons.v_address,
}.entries.toList(growable: false);

class IconsScreen extends StatelessWidget {
  const IconsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: icons
              .map((icon) => SizedBox(
                    width: 128.0,
                    height: 64.0,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(icon.value),
                          Text(icon.key),
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
