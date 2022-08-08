import 'package:flutter/material.dart';
import 'package:postory_theme/src/themes/navigation_bar_theme_data.dart';

import 'navigation_bar_speed_dial.dart';

class PostoryNavigationBar extends StatefulWidget {
  const PostoryNavigationBar({
    Key? key,
    required this.items,
    required this.speedDial,
    this.initialIndex,
    this.currentIndex,
    this.speedDialIndex = 2,
    this.onTap,
  })  : assert((initialIndex != null) ^ (currentIndex != null)),
        super(key: key);

  final List<BottomNavigationBarItem> items;
  final NavigationBarSpeedDial speedDial;
  final int? initialIndex;
  final int? currentIndex;
  final int? speedDialIndex;
  final ValueChanged<int>? onTap;

  @override
  State<PostoryNavigationBar> createState() => _PostoryNavigationBarState();
}

class _PostoryNavigationBarState extends State<PostoryNavigationBar> {
  static const showSelectedLabels = false;
  static const showUnselectedLabels = false;
  static const speedDialMarginBottom = 16.0;
  static const type = BottomNavigationBarType.fixed;

  late var _currentIndex = widget.initialIndex;

  bool get handleState => _currentIndex != null;
  int get currentIndex => _currentIndex ?? widget.currentIndex!;

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
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return PostoryNavigationBarTheme(
      child: BottomNavigationBar(
        items: widget.items,
        onTap: (value) {
          if (handleState) {
            setCurrentIndex(value);
          }
          widget.onTap?.call(value);

          if (value == widget.speedDialIndex) {
            widget.speedDial.controller.show();
          } else {
            widget.speedDial.controller.hide();
          }
        },
        currentIndex: currentIndex,
        type: type,
        showSelectedLabels: showSelectedLabels,
        showUnselectedLabels: showUnselectedLabels,
      ),
    );
  }
}
