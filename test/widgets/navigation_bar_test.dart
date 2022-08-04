import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/postory_theme.dart';
import 'package:postory_theme/src/widgets/navigation_bar.dart';
import 'package:postory_theme/src/widgets/navigation_bar_speed_dial.dart';

Widget buildApp({required Widget widget}) {
  return MaterialApp(
    theme: PostoryTheme.light(),
    home: Center(child: widget),
  );
}

void main() {
  testWidgets('PostoryNavigationBar defaults', (tester) async {
    const items = [
      BottomNavigationBarItem(icon: Icon(Icons.abc), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.back_hand), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.cabin), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.e_mobiledata), label: ''),
    ];
    final speedDial = NavigationBarSpeedDial(
      controller: NavigationBarSpeedDialController(),
      icon: const Icon(Icons.abc_outlined),
    );

    final navigationBar = PostoryNavigationBar(
      items: items,
      speedDial: speedDial,
    );
    await tester.pumpWidget(buildApp(widget: navigationBar));

    await tester.pumpAndSettle();
    expect(find.byWidget(speedDial), findsOneWidget);
    expect(find.byType(Icon), findsNWidgets(items.length));
  });
}
