import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_3_demo/widgets/drawer.dart';
import 'package:postory_theme/postory_theme.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  final speedDialController = NavigationBarSpeedDialController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      drawer: const MyDrawer(),
      bottomNavigationBar: PostoryNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: NavigationBarIcon.home(active: false),
            activeIcon: NavigationBarIcon.home(active: true),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavigationBarIcon.explore(active: false),
            activeIcon: NavigationBarIcon.explore(active: true),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavigationBarIcon.sendPost(active: false),
            activeIcon: SizedBox.shrink(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavigationBarIcon.store(active: false),
            activeIcon: NavigationBarIcon.store(active: true),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavigationBarIcon.profile(active: false),
            activeIcon: NavigationBarIcon.profile(active: true),
            label: '',
          ),
        ],
        speedDial: NavigationBarSpeedDial(
          controller: speedDialController,
          icon: SvgPicture.asset(PostorySvgs.postory, width: 72.0),
        ),
      ),
    );
  }
}
