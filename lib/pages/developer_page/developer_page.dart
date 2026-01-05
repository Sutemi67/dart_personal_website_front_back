import 'package:dart_personal_website_server/common_components/appear_page_animiation.dart';
import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});
  @override
  Widget build(BuildContext context) {
    late final colorScheme = Theme.of(context).colorScheme;
    // ignore: unused_local_variable
    late final bgColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(56),
      colorScheme.surface,
    );
    return AppearPageAnimation(
      child: const Center(child: Text('Developer page')),
    );
  }
}
