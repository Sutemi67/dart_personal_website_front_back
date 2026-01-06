import 'package:dart_personal_website_server/common_components/appear_page_animiation.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/flutter_carousel.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/kotlin_carousel.dart';
import 'package:flutter/material.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  final CarouselController controller = CarouselController(initialItem: 1);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late final colorScheme = Theme.of(context).colorScheme;
    // ignore: unused_local_variable
    late final bgColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(56),
      colorScheme.surface,
    );
    return AppearPageAnimation(
      child: Column(
        children: [
          Text('Developer page'),
          Text('Description of developer page'),
          KotlinCarouselWidget(),
          FlutterCarouselWidget(),
        ],
      ),
    );
  }
}
