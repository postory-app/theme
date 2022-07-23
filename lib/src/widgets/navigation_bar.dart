import 'package:flutter/material.dart';

import 'navigation_bar_speed_dial.dart';

class PostoryNavigationBar extends StatefulWidget {
  const PostoryNavigationBar({
    Key? key,
    required this.items,
    required this.speedDial,
    this.initialIndex = 0,
    this.onTap,
  })  : assert(items.length == 5),
        super(key: key);

  final List<BottomNavigationBarItem> items;
  final NavigationBarSpeedDial speedDial;
  final int initialIndex;
  final ValueChanged<int>? onTap;

  @override
  State<PostoryNavigationBar> createState() => _PostoryNavigationBarState();
}

class _PostoryNavigationBarState extends State<PostoryNavigationBar> {
  static const showSelectedLabels = false;
  static const showUnselectedLabels = false;
  static const speedDialIndex = 2;
  static const speedDialMarginBottom = 16.0;
  static const type = BottomNavigationBarType.fixed;

  late var currentIndex = widget.initialIndex;

  void initSpeedDialOverlay() {
    Overlay.of(context)?.insert(OverlayEntry(
      builder: (context) => Stack(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: speedDialMarginBottom),
          alignment: Alignment.bottomCenter,
          child: widget.speedDial,
        ),
      ]),
    ));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => initSpeedDialOverlay());
  }

  void setCurrentIndex(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: widget.items,
      onTap: (value) {
        setCurrentIndex(value);
        widget.onTap?.call(value);

        if (currentIndex == speedDialIndex) {
          widget.speedDial.controller.show();
        } else {
          widget.speedDial.controller.hide();
        }
      },
      currentIndex: currentIndex,
      type: type,
      showSelectedLabels: showSelectedLabels,
      showUnselectedLabels: showUnselectedLabels,
    );
  }
}
