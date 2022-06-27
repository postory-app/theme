import 'package:flutter/material.dart';
import 'package:material_3_demo/widgets/drawer.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('typography')),
      drawer: const MyDrawer(),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 7),
          TextStyleExample(
              name: "Display Large", style: textTheme.displayLarge!),
          TextStyleExample(
              name: "Display Medium", style: textTheme.displayMedium!),
          TextStyleExample(
              name: "Display Small", style: textTheme.displaySmall!),
          TextStyleExample(
              name: "Headline Large", style: textTheme.headlineLarge!),
          TextStyleExample(
              name: "Headline Medium", style: textTheme.headlineMedium!),
          TextStyleExample(
              name: "Headline Small", style: textTheme.headlineSmall!),
          TextStyleExample(name: "Title Large", style: textTheme.titleLarge!),
          TextStyleExample(name: "Title Medium", style: textTheme.titleMedium!),
          TextStyleExample(name: "Title Small", style: textTheme.titleSmall!),
          TextStyleExample(name: "Label Large", style: textTheme.labelLarge!),
          TextStyleExample(name: "Label Medium", style: textTheme.labelMedium!),
          TextStyleExample(name: "Label Small", style: textTheme.labelSmall!),
          TextStyleExample(name: "Body Large", style: textTheme.bodyLarge!),
          TextStyleExample(name: "Body Medium", style: textTheme.bodyMedium!),
          TextStyleExample(name: "Body Small", style: textTheme.bodySmall!),
        ],
      ),
    );
  }
}

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name, style: style),
    );
  }
}
