import 'package:flutter/material.dart';
import 'package:material_3_demo/pages/color_palettes_page.dart';
import 'package:material_3_demo/pages/image_page.dart';
import 'package:material_3_demo/pages/lottie_page.dart';
import 'package:material_3_demo/pages/svg_page.dart';
import 'package:material_3_demo/pages/typography_page.dart';

extension NavigatorStateExtension on NavigatorState {
  Future toLottiePage() {
    return push(
      MaterialPageRoute(builder: (_) => const LottiePage()),
    );
  }

  Future toImagePage() {
    return push(
      MaterialPageRoute(builder: (_) => const ImagePage()),
    );
  }

  Future toSvgPage() {
    return push(
      MaterialPageRoute(builder: (_) => const SvgPage()),
    );
  }

  Future toColorPalettesPage() {
    return push(
      MaterialPageRoute(builder: (_) => const ColorPalettesPage()),
    );
  }

  Future toTypographyPage() {
    return push(
      MaterialPageRoute(builder: (_) => const TypographyPage()),
    );
  }
}
