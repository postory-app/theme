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
    const speedDialIndex = 2;
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
      int callback = 3;
      final speedDial = newSpeedDial();
      final navigationBar = PostoryNavigationBar(
        initialIndex: callback,
        items: items,
        speedDial: speedDial,
        onTap: (value) => callback = value,
      );

      await tester.pumpWidget(buildApp(child: navigationBar));
      await tester.pumpAndSettle();

      for (var i = 0; i < items.length; i++) {
        await tester.tap(find.text(items[i].label!));
        await tester.pumpAndSettle();
        expect(callback, i);

        if (i == speedDialIndex) {
          expect(find.byWidget(speedDial.icon), findsOneWidget);
        } else {
          expect(find.byWidget(speedDial.icon), findsNothing);
        }
      }
    });

    testWidgets('Tap callback with currentIndex', (tester) async {
      int callback = 3;
      final speedDial = newSpeedDial();
      final controller = StreamController<int>();
      final navigationBarBuilder = StreamBuilder<int>(
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
      );

      await tester.pumpWidget(buildApp(child: navigationBarBuilder));
      await tester.pumpAndSettle();

      for (var i = 0; i < items.length; i++) {
        await tester.tap(find.text(items[i].label!));
        await tester.pumpAndSettle();
        expect(callback, i);

        if (i == speedDialIndex) {
          expect(find.byWidget(speedDial.icon), findsOneWidget);
        } else {
          expect(find.byWidget(speedDial.icon), findsNothing);
        }
      }
    });
  });
}
