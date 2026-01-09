import 'package:dart_personal_website_server/common_components/functions.dart';
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
                borderRadius: const BorderRadius.all(Radius.circular(22)),
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
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 10),
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
          ],
        ),
      ),
    );
  }
}
