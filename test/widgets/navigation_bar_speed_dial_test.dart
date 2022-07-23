import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/src/widgets/navigation_bar_speed_dial.dart';

Widget buildApp({required Widget widget}) {
  return MaterialApp(
    home: Center(child: widget),
  );
}

void main() {
  testWidgets(
      'NavigationBarSpeedDial control icon with NavigationBarSpeedDialController',
      (tester) async {
    final speedDial = NavigationBarSpeedDial(
      controller: NavigationBarSpeedDialController(),
      icon: const Icon(Icons.abc_outlined),
    );
    await tester.pumpWidget(buildApp(widget: speedDial));

    await tester.pumpAndSettle();
    expect(find.byWidget(speedDial.icon), findsNothing);

    speedDial.controller.show();
    await tester.pumpAndSettle();
    expect(find.byWidget(speedDial.icon), findsOneWidget);

    speedDial.controller.hide();
    await tester.pumpAndSettle();
    expect(find.byWidget(speedDial.icon), findsNothing);
  });
}
