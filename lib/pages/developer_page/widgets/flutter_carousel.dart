import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/apps_lists.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/carousels_options.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/dev_constants.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/hero_stack_layout.dart';
import 'package:flutter/material.dart';

class FlutterCarouselWidget extends StatefulWidget {
  const FlutterCarouselWidget({super.key});

  @override
  State<FlutterCarouselWidget> createState() => _FlutterCarouselWidgetState();
}

class _FlutterCarouselWidgetState extends State<FlutterCarouselWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  late final _height = MediaQuery.of(context).size.height / 3;
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _textScheme = Theme.of(context).textTheme;
  late final stackTitleStyle = _textScheme.headlineSmall!.copyWith(
    color: Color.alphaBlend(_colorScheme.primary, _colorScheme.surface),
  );
  late final stackDescriptionStyle = _textScheme.titleMedium!.copyWith(
    color: _colorScheme.onSurface,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DevelopersPageConstants.paddings,
      child: Card(
        color: _colorScheme.surfaceContainerHigh,
        elevation: 5,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text('FLUTTER', style: stackTitleStyle),
            ),
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text('Flutter stack:', style: stackDescriptionStyle),
            ),
            Padding(
              padding: DevelopersPageConstants.textPaddings,
              child: Text(
                'Apps, already in production:',
                style: stackDescriptionStyle,
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
                  DevelopersPageConstants.nextButton(_colorScheme, _controller),
                  DevelopersPageConstants.backButton(_colorScheme, _controller),
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
