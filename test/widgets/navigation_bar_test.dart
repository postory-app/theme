import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/postory_theme.dart';

Widget buildApp({required Widget child}) {
  return MaterialApp(
    theme: PostoryTheme.light(),
    home: Center(child: child),
  );
}

NavigationBarSpeedDial newSpeedDial() {
  return NavigationBarSpeedDial(
    controller: NavigationBarSpeedDialController(),
    icon: const Icon(Icons.abc_outlined),
  );
}

void main() {
  group('PostoryNavigationBar', () {
    const items = [
      BottomNavigationBarItem(icon: Placeholder(), label: 'item 1'),
      BottomNavigationBarItem(icon: Placeholder(), label: 'item 2'),
      BottomNavigationBarItem(icon: Placeholder(), label: 'item 3'),
      BottomNavigationBarItem(icon: Placeholder(), label: 'item 4'),
      BottomNavigationBarItem(icon: Placeholder(), label: 'item 5'),
    ];

    testWidgets('Display items', (tester) async {
      final speedDial = newSpeedDial();

      await tester.pumpWidget(buildApp(
        child: PostoryNavigationBar(
          initialIndex: 0,
          items: items,
          speedDial: speedDial,
        ),
      ));

      await tester.pumpAndSettle();
      expect(find.byWidget(speedDial), findsOneWidget);
      expect(find.byType(Text), findsNWidgets(items.length));
    });

    testWidgets('Tap callback with initialIndex', (tester) async {
      final speedDial = newSpeedDial();
      int callback = 3;

      await tester.pumpWidget(buildApp(
        child: PostoryNavigationBar(
          initialIndex: callback,
          items: items,
          speedDial: speedDial,
          onTap: (value) => callback = value,
        ),
      ));
      await tester.pumpAndSettle();

      for (var i = 0; i < items.length; i++) {
        await tester.tap(find.text(items[i].label!));
        expect(callback, i);
      }
    });

    testWidgets('Tap callback with currentIndex', (tester) async {
      final speedDial = newSpeedDial();
      final controller = StreamController<int>();
      int callback = 3;

      await tester.pumpWidget(
        buildApp(
          child: StreamBuilder<int>(
            initialData: callback,
            stream: controller.stream,
            builder: (context, snapshot) {
              return PostoryNavigationBar(
                currentIndex: snapshot.data!,
                items: items,
                speedDial: speedDial,
                onTap: (value) {
                  controller.sink.add(value);
                  callback = value;
                },
              );
            },
          ),
        ),
      );
      await tester.pumpAndSettle();

      for (var i = 0; i < items.length; i++) {
        await tester.tap(find.text(items[i].label!));
        expect(callback, i);
      }
    });
  });
}
