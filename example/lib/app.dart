import 'package:flutter/material.dart';
import 'package:material_3_demo/pages/navigation_bar_page.dart';
import 'package:postory_theme/postory_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POSTORY Theme',
      themeMode: ThemeMode.light,
      theme: PostoryTheme.light(),
      darkTheme: PostoryTheme.dark(),
      home: const NavigationBarPage(),
    );
  }
}
