import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_personal_website_server/presentation/common_components/app_styles.dart';
import 'package:dart_personal_website_server/presentation/pages/developer_page/configs/dev_constants.dart';
import 'package:dart_personal_website_server/presentation/pages/developer_page/widgets/hero_stack_layout.dart';
import 'package:flutter/material.dart';

import '../configs/apps_lists.dart';
import '../configs/carousels_options.dart';

class KotlinCarouselWidget extends StatefulWidget {
  const KotlinCarouselWidget({super.key});

  @override
  State<KotlinCarouselWidget> createState() => _KotlinCarouselWidgetState();
}

class _KotlinCarouselWidgetState extends State<KotlinCarouselWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  late final _height = MediaQuery.of(context).size.height / 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DevelopersPageConstants.paddings,
      child: Card(
        color: context.cardColor,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text('KOTLIN', style: context.titleStyle),
            ),
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text('Kotlin stack:', style: context.bodyStyle),
            ),
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text(
                'Apps, already in production:',
                style: context.bodyStyle,
              ),
            ),
            Padding(
              padding: DevelopersPageConstants.carouselPaddings,
              child: Stack(
                children: [
                  CarouselSlider(
                    carouselController: _controller,
                    items: AppsLists.kotlinList
                        .map(
                          (el) => HeroLayoutWidget(
                            imageUrl: el.imageUrl,
                            title: el.title,
                            description: el.description,
                            urlToOpen: el.urlToOpen,
                          ),
                        )
                        .toList(),
                    options: carouselsOptions(_height, (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
                  ),
                  DevelopersPageConstants.nextButton(
                    context.themeColors,
                    _controller,
                  ),
                  DevelopersPageConstants.backButton(
                    context.themeColors,
                    _controller,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: AppsLists.kotlinList.map((entry) {
                int index = AppsLists.kotlinList.indexOf(entry);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? const Color.fromRGBO(150, 15, 150, 0.4)
                        : const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
