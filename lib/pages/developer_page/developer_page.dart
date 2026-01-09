import 'package:dart_personal_website_server/common_components/appear_page_animation.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/flutter_carousel.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/kotlin_carousel.dart';
import 'package:flutter/material.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  @override
  Widget build(BuildContext context) {
    late final colorScheme = Theme.of(context).colorScheme;
    late final textScheme = Theme.of(context).textTheme;
    late final bgColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(200),
      colorScheme.surface,
    );
    return AppearPageAnimation(
      child: Column(
        children: [
          Text(
            'Developer page',
            style: textScheme.headlineLarge!.copyWith(color: bgColor),
          ),
          Text(
            'Description of developer page',
            style: textScheme.headlineSmall,
          ),
          KotlinCarouselWidget(),
          FlutterCarouselWidget(),
        ],
      ),
    );
  }
}
