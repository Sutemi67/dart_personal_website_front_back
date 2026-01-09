import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/apps_lists.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/carousels_options.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/dev_constants.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/hero_stack_layout.dart';
import 'package:flutter/material.dart';

class KotlinCarouselWidget extends StatefulWidget {
  const KotlinCarouselWidget({super.key});

  @override
  State<KotlinCarouselWidget> createState() => _KotlinCarouselWidgetState();
}

class _KotlinCarouselWidgetState extends State<KotlinCarouselWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  late final _height = MediaQuery.of(context).size.height / 3;
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _textScheme = Theme.of(context).textTheme;
  late final _stackTitleStyle = _textScheme.headlineSmall;
  late final _stackDescriptionStyle = _textScheme.titleMedium!.copyWith(
    color: _colorScheme.onSurface,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DevelopersPageConstants.paddings,
      child: Card(
        color: _colorScheme.surfaceContainerHigh,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text(
                'KOTLIN',
                style: _stackTitleStyle!.copyWith(
                  color: Color.alphaBlend(
                    _colorScheme.primary,
                    _colorScheme.surface,
                  ),
                ),
              ),
            ),
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text('Kotlin stack:', style: _stackDescriptionStyle),
            ),
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text(
                'Apps, already in production:',
                style: _stackDescriptionStyle,
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
                  DevelopersPageConstants.nextButton(_colorScheme, _controller),
                  DevelopersPageConstants.backButton(_colorScheme, _controller),
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
