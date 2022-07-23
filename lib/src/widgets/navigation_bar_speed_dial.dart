import 'package:flutter/widgets.dart';

class NavigationBarSpeedDialController {
  late final void Function(bool value) _callback;

  void show() => _callback(false);
  void hide() => _callback(true);
}

class NavigationBarSpeedDial extends StatefulWidget {
  const NavigationBarSpeedDial({
    Key? key,
    required this.controller,
    required this.icon,
  }) : super(key: key);

  final NavigationBarSpeedDialController controller;
  final Widget icon;

  @override
  State<NavigationBarSpeedDial> createState() => _NavigationBarSpeedDialState();
}

class _NavigationBarSpeedDialState extends State<NavigationBarSpeedDial> {
  static const duration = Duration(milliseconds: 120);

  var offstage = true;

  @override
  void initState() {
    widget.controller._callback =
        (bool value) => setState(() => offstage = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      transitionBuilder: (Widget child, Animation<double> animation) =>
          ScaleTransition(
        scale: animation,
        alignment: Alignment.bottomCenter,
        child: child,
      ),
      child: Offstage(
        key: ValueKey(offstage),
        offstage: offstage,
        child: widget.icon,
      ),
    );
  }
}
