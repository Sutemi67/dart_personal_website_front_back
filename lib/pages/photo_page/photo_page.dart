import 'package:dart_personal_website_server/common_components/appear_page_animiation.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(child: const Center(child: Text('Photo page')));
  }
}
