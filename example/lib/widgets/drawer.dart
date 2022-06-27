import 'package:flutter/material.dart';
import 'package:material_3_demo/navigator.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('lottie'),
            onTap: Navigator.of(context).toLottiePage,
          ),
          ListTile(
            title: const Text('image'),
            onTap: Navigator.of(context).toImagePage,
          ),
          ListTile(
            title: const Text('svg'),
            onTap: Navigator.of(context).toSvgPage,
          ),
          ListTile(
            title: const Text('color palette'),
            onTap: Navigator.of(context).toColorPalettesPage,
          ),
          ListTile(
            title: const Text('typography'),
            onTap: Navigator.of(context).toTypographyPage,
          ),
        ],
      ),
    );
  }
}
