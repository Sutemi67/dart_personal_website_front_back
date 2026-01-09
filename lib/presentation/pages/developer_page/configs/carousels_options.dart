import 'package:carousel_slider/carousel_options.dart';

CarouselOptions carouselsOptions(double height, dynamic onPageChanged) {
  return CarouselOptions(
    height: height,
    autoPlay: false,
    enlargeFactor: 0.5,
    autoPlayAnimationDuration: const Duration(seconds: 3),
    onPageChanged: onPageChanged,
  );
}
