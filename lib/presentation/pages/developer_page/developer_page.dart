import 'package:dart_personal_website_server/presentation/common_components/app_styles.dart';
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
  late final _titleTextStyle = context.titleStyle;
  late final _descTextStyle = context.bodyStyle;

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: Column(
        children: [
          Text('App developing', style: _titleTextStyle),
          Text('My works and tech stack', style: _descTextStyle),
          KotlinCarouselWidget(),
          FlutterCarouselWidget(),
        ],
      ),
    );
  }
}
