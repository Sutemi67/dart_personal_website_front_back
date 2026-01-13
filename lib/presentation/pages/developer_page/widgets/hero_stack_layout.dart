import 'package:dart_personal_website_server/presentation/common_components/functions.dart';
import 'package:dart_personal_website_server/presentation/pages/developer_page/configs/dev_constants.dart';
import 'package:flutter/material.dart';

class HeroLayoutWidget extends StatelessWidget {
  const HeroLayoutWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.urlToOpen,
  });

  final String imageUrl;
  final String title;
  final String description;
  final String urlToOpen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15, left: 15, right: 15),
      child: InkWell(
        onTap: () => goToUrl(urlToOpen),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: .all(
                  .circular(DevelopersPageConstants.carouselBorderRadius),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(155),
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 1.5,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: .circular(
                    DevelopersPageConstants.carouselBorderRadius,
                  ),
                  bottomRight: .circular(
                    DevelopersPageConstants.carouselBorderRadius,
                  ),
                ),
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withAlpha(220)],
                  end: .bottomCenter,
                  begin: .topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      title,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge?.copyWith(color: Colors.white),
                    ),
                    Text(
                      description,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
