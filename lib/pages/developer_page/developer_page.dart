import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});
  @override
  Widget build(BuildContext context) {
    late final colorScheme = Theme.of(context).colorScheme;
    late final bgColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(56),
      colorScheme.surface,
    );
    return const Center(child: Text('Developer page'));
  }
}
