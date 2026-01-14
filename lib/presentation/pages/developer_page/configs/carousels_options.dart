import 'package:carousel_slider/carousel_options.dart';

CarouselOptions carouselsOptions(double height, dynamic onPageChanged) {
  return CarouselOptions(
    height: height,
    autoPlay: true,
    enlargeStrategy: .zoom,
    enlargeCenterPage: true,
    autoPlayInterval: const Duration(seconds: 7),
    autoPlayAnimationDuration: const Duration(seconds: 4),
    onPageChanged: onPageChanged,
  );
}
