import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:postory_theme/src/icons.dart';
import 'package:postory_theme/src/widgets/navigation_bar_icon.dart';

Widget buildIconApp({required Widget icon}) {
  return MaterialApp(
    home: Center(child: icon),
  );
}

void main() {
  const dotFile = 'navigation_bar_icon_dot.png';

  testWidgets('NavigationBarIcon.home', (tester) async {
    await tester.pumpWidget(
      buildIconApp(icon: const NavigationBarIcon.home(active: true)),
    );
    await tester.pumpAndSettle();

    expect(find.homeIcon(), findsOneWidget);
    await expectLater(find.byType(Positioned), matchesGoldenFile(dotFile));
  });

  testWidgets('NavigationBarIcon.explore', (tester) async {
    await tester.pumpWidget(
      buildIconApp(icon: const NavigationBarIcon.explore(active: true)),
    );
    await tester.pumpAndSettle();

    expect(find.exploreIcon(), findsOneWidget);
    await expectLater(find.byType(Positioned), matchesGoldenFile(dotFile));
  });

  testWidgets('NavigationBarIcon.sendPost', (tester) async {
    await tester.pumpWidget(
      buildIconApp(icon: const NavigationBarIcon.sendPost(active: false)),
    );
    await tester.pumpAndSettle();

    expect(find.sendPostIcon(), findsOneWidget);
  });

  testWidgets('NavigationBarIcon.store', (tester) async {
    await tester.pumpWidget(
      buildIconApp(icon: const NavigationBarIcon.store(active: true)),
    );
    await tester.pumpAndSettle();

    expect(find.storeIcon(), findsOneWidget);
    await expectLater(find.byType(Positioned), matchesGoldenFile(dotFile));
  });

  testWidgets('NavigationBarIcon.profile', (tester) async {
    await tester.pumpWidget(
      buildIconApp(icon: const NavigationBarIcon.profile(active: true)),
    );
    await tester.pumpAndSettle();

    expect(find.profileIcon(), findsOneWidget);
    await expectLater(find.byType(Positioned), matchesGoldenFile(dotFile));
  });
}

extension _CommonFindersExtensions on CommonFinders {
  Finder homeIcon() => byIcon(PostoryIcons.n_home);
  Finder exploreIcon() => byIcon(PostoryIcons.n_explore);
  Finder sendPostIcon() => byIcon(PostoryIcons.n_postory);
  Finder storeIcon() => byIcon(PostoryIcons.n_store);
  Finder profileIcon() => byIcon(PostoryIcons.n_avater);
}
