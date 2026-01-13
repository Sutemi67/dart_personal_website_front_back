import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_personal_website_server/presentation/common_components/app_styles.dart';
import 'package:flutter/material.dart';

import '../configs/apps_lists.dart';
import '../configs/carousels_options.dart';
import '../configs/dev_constants.dart';
import 'hero_stack_layout.dart';

class FlutterCarouselWidget extends StatefulWidget {
  const FlutterCarouselWidget({super.key});

  @override
  State<FlutterCarouselWidget> createState() => _FlutterCarouselWidgetState();
}

class _FlutterCarouselWidgetState extends State<FlutterCarouselWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  late final _height = MediaQuery.of(context).size.height / 3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DevelopersPageConstants.paddings,
      child: Card(
        color: context.cardColor,
        elevation: 5,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text('FLUTTER', style: context.titleStyle),
            ),
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text('Flutter stack:', style: context.bodyStyle),
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
                    items: AppsLists.flutterList
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
              children: AppsLists.flutterList.map((entry) {
                int index = AppsLists.flutterList.indexOf(entry);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 2.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? const Color.fromARGB(78, 200, 61, 219)
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
