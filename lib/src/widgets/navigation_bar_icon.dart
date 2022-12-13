import 'package:flutter/widgets.dart';

import '../icons.dart';

class NavigationBarIcon extends StatelessWidget {
  static const duration = Duration(milliseconds: 1200);
  static const reverseDuration = Duration(milliseconds: 300);
  static const minDotRadius = 0.0;
  static const maxDotRadius = 10.0;

  const NavigationBarIcon(
      {Key? key, required this.active, required this.iconData})
      : super(key: key);

  const NavigationBarIcon.home({Key? key, required this.active})
      : iconData = PostoryIcons.n_home,
        super(key: key);

  const NavigationBarIcon.explore({Key? key, required this.active})
      : iconData = PostoryIcons.n_explore,
        super(key: key);

  const NavigationBarIcon.sendPost({Key? key, required this.active})
      : iconData = PostoryIcons.n_postory,
        super(key: key);

  const NavigationBarIcon.store({Key? key, required this.active})
      : iconData = PostoryIcons.n_store,
        super(key: key);

  const NavigationBarIcon.profile({Key? key, required this.active})
      : iconData = PostoryIcons.n_avater,
        super(key: key);

  final bool active;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 1.0,
          bottom: 1.0,
          child: AnimatedSwitcher(
            duration: duration,
            reverseDuration: reverseDuration,
            switchInCurve: Curves.elasticOut,
            switchOutCurve: Curves.easeOutQuart,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: CustomPaint(
              key: ValueKey(active),
              painter: _DotPainter(
                radius: active ? maxDotRadius : minDotRadius,
                // TODO: remove custom color
                color: const Color(0xFFFFD24A),
              ),
            ),
          ),
        ),
        Icon(iconData),
      ],
    );
  }
}

class _DotPainter extends CustomPainter {
  const _DotPainter({
    required this.radius,
    required this.color,
  });

  final double radius;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      Offset.zero,
      radius,
      Paint()
        ..color = color
        ..style = PaintingStyle.fill,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
