import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class DevelopersPageConstants {
  static const paddings = EdgeInsets.all(25.0);
  static const carouselPaddings = EdgeInsets.symmetric(horizontal: 50.0);
  static const textPaddings = EdgeInsets.only(left: 25, top: 15);
  static const iconBack = Icon(Icons.arrow_back_ios, color: Colors.white);
  static const iconForward = Icon(Icons.arrow_forward_ios, color: Colors.white);
  static const double carouselBorderRadius = 32;

  static Positioned nextButton(
    ColorScheme colorScheme,
    CarouselSliderController controller,
  ) {
    return Positioned(
      right: 0,
      top: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.surfaceContainerHigh.withAlpha(0),
              colorScheme.surfaceContainerHigh,
            ],
          ),
        ),
        child: IconButton(
          icon: DevelopersPageConstants.iconForward,
          onPressed: () => controller.nextPage(),
        ),
      ),
    );
  }

  static Positioned backButton(
    ColorScheme colorScheme,
    CarouselSliderController controller,
  ) {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.surfaceContainerHigh,
              colorScheme.surfaceContainerHigh.withAlpha(0),
            ],
          ),
        ),
        child: IconButton(
          icon: DevelopersPageConstants.iconBack,
          onPressed: () => controller.previousPage(),
        ),
      ),
    );
  }
}
