import 'package:dart_personal_website_server/presentation/common_components/appear_page_animation.dart';
import 'package:dart_personal_website_server/presentation/pages/developer_page/widgets/flutter_carousel.dart';
import 'package:dart_personal_website_server/presentation/pages/developer_page/widgets/kotlin_carousel.dart';
import 'package:flutter/material.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  late final colorScheme = Theme.of(context).colorScheme;
  late final textScheme = Theme.of(context).textTheme;
  late final _titleTextStyle = textScheme.headlineLarge!.copyWith(
    color: colorScheme.primary,
  );
  late final _descTextStyle = textScheme.titleMedium!.copyWith(
    color: colorScheme.onSurface,
  );

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: Column(
        children: [
          Text('Developer page', style: _titleTextStyle),
          Text('Description of developer page', style: _descTextStyle),
          KotlinCarouselWidget(),
          FlutterCarouselWidget(),
        ],
      ),
    );
  }
}
