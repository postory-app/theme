import 'package:flutter/material.dart';
import 'package:material_3_demo/icon_screen.dart';
import 'package:postory_theme/postory_theme.dart';

import 'color_palettes_screen.dart';
import 'component_screen.dart';
import 'elevation_screen.dart';
import 'svg_screen.dart';
import 'typography_screen.dart';

void main() {
  runApp(const Material3Demo());
}

class Material3Demo extends StatefulWidget {
  const Material3Demo({super.key});

  @override
  State<Material3Demo> createState() => _Material3DemoState();
}

// NavigationRail shows if the screen width is greater or equal to
// screenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

class _Material3DemoState extends State<Material3Demo> {
  bool useLightMode = true;
  int screenIndex = 0;

  late ThemeData themeData;

  @override
  initState() {
    super.initState();
  }

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  void handleBrightnessChange() {
    setState(() {
      useLightMode = !useLightMode;
    });
  }

  Widget createScreenFor(int screenIndex, bool showNavBarExample) {
    switch (screenIndex) {
      case 0:
        return const SvgScreen();
      case 1:
        return const IconsScreen();
      case 2:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
      case 3:
        return const ColorPalettesScreen();
      case 4:
        return const TypographyScreen();
      case 5:
        return const ElevationScreen();
      default:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const Text("POSTORY Theme"),
      actions: [
        IconButton(
          icon: useLightMode
              ? const Icon(Icons.wb_sunny_outlined)
              : const Icon(Icons.wb_sunny),
          onPressed: handleBrightnessChange,
          tooltip: "Toggle brightness",
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POSTORY Theme',
      themeMode: useLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: PostoryTheme.light(),
      darkTheme: PostoryTheme.dark(),
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < narrowScreenWidthThreshold) {
          return Scaffold(
            appBar: createAppBar(),
            body: Row(children: <Widget>[
              createScreenFor(screenIndex, false),
            ]),
            bottomNavigationBar: NavigationBars(
              onSelectItem: handleScreenChanged,
              selectedIndex: screenIndex,
              isExampleBar: false,
            ),
          );
        } else {
          return Scaffold(
            appBar: createAppBar(),
            body: SafeArea(
              bottom: false,
              top: false,
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: NavigationRailSection(
                          onSelectItem: handleScreenChanged,
                          selectedIndex: screenIndex)),
                  const VerticalDivider(thickness: 1, width: 1),
                  createScreenFor(screenIndex, true),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
