import 'package:dart_personal_website_server/common_components/appear_page_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotoPage extends StatelessWidget {
  @Preview(name: 'preview')
  const PhotoPage({super.key});

  static const List<String> listOfImages = [
    'assets/photo1.webp',
    'assets/photo2.webp',
    'assets/photo3.webp',
    'assets/photo4.webp',
    'assets/photo5.webp',
    'assets/photo6.webp',
    'assets/photo7.webp',
    'assets/photo8.webp',
    'assets/photo9.webp',
    'assets/photo10.webp',
    'assets/photo11.webp',
    'assets/photo12.webp',
    'assets/photo13.webp',
    'assets/photo14.webp',
    'assets/photo15.webp',
    'assets/photo16.webp',
    'assets/photo17.webp',
    'assets/photo18.webp',
    'assets/photo19.webp',
    'assets/photo20.webp',
    'assets/photo21.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Photography'),
          const Text('My view of the world through the lens.'),
          MasonryGridView.builder(
            itemCount: listOfImages.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            itemBuilder: (context, index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  listOfImages[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
