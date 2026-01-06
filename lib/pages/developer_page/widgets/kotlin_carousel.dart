import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/apps_lists.dart';
import 'package:dart_personal_website_server/pages/developer_page/configs/carousels_options.dart';
import 'package:dart_personal_website_server/pages/developer_page/widgets/hero_stack_layout.dart';
import 'package:flutter/material.dart';

class KotlinCarouselWidget extends StatefulWidget {
  const KotlinCarouselWidget({super.key});

  static const paddings = EdgeInsets.all(10.0);

  @override
  State<KotlinCarouselWidget> createState() => _KotlinCarouselWidgetState();
}

class _KotlinCarouselWidgetState extends State<KotlinCarouselWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    late final height = MediaQuery.of(context).size.height / 3;
    late final colorScheme = Theme.of(context).colorScheme;
    late final textScheme = Theme.of(context).textTheme;
    late final stackTitleSize = textScheme.headlineSmall;
    late final stackDescriptionSize = textScheme.titleMedium;
    return Card(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: KotlinCarouselWidget.paddings,
            child: Text(
              'KOTLIN',
              style: stackTitleSize!.copyWith(
                color: Color.alphaBlend(
                  colorScheme.primary,
                  colorScheme.surface,
                ),
              ),
            ),
          ),
          Padding(
            padding: KotlinCarouselWidget.paddings,
            child: Text('Kotlin stack:', style: stackDescriptionSize),
          ),
          Padding(
            padding: KotlinCarouselWidget.paddings,
            child: Text(
              'Apps, already in production:',
              style: stackDescriptionSize,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
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
                        ),
                      )
                      .toList(),
                  options: carouselsOptions(height, (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () => _controller.nextPage(),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: () => _controller.previousPage(),
                  ),
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
    );
  }
}
