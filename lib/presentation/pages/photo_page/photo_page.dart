import 'package:dart_personal_website_server/presentation/common_components/app_styles.dart';
import 'package:dart_personal_website_server/presentation/common_components/appear_page_animation.dart';
import 'package:dart_personal_website_server/presentation/pages/photo_page/photo_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotoPage extends StatelessWidget {
  @Preview(name: 'preview')
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Photography', style: context.titleStyle),
          Text(
            'My view of the world through the lens.',
            style: context.bodyStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              color: context.cardColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,
                ),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'Now I live in Smolensk. If you want to get a session, please contact me and we find a better time for you. Here are some examples of my works.',
                    style: context.descriptionStyle,
                    textAlign: .center,
                  ),
                ),
              ),
            ),
          ),
          MasonryGridView.builder(
            itemCount: PhotoConstants.listOfImages.length,
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
                shadowColor: Colors.black,
                elevation: 3,
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  PhotoConstants.listOfImages[index],
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
