import 'package:carousel_slider/carousel_options.dart';

CarouselOptions carouselsOptions(double height) {
  return CarouselOptions(
    height: height,
    autoPlay: false,
    enlargeFactor: 0.5,
    autoPlayAnimationDuration: const Duration(seconds: 2),
  );
}
