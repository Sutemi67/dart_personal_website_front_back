import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/apps_images.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/carousels_options.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/hero_stack_layout.dart';
import 'package:flutter/material.dart';

class FlutterCarouselWidget extends StatelessWidget {
  const FlutterCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    late final height = MediaQuery.of(context).size.height / 3;

    return Card(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Text('Test slider'),
          Text('something'),
          CarouselSlider(
            items: AppImages.flutterList
                .map((el) => HeroLayoutWidget(imageUrl: el))
                .toList(),
            options: carouselsOptions(height),
          ),
        ],
      ),
    );
  }
}
