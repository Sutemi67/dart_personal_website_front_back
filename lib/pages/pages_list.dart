import 'package:dart_personal_website_server/pages/developer_page/developer_page.dart';
import 'package:dart_personal_website_server/pages/main_page/main_page.dart';
import 'package:dart_personal_website_server/pages/photo_page/photo_page.dart';
import 'package:dart_personal_website_server/pages/train_page/train_page.dart';
import 'package:flutter/material.dart';

class PagesList {
  static const pagesList = [
    NavigationRailDestination(icon: Icon(Icons.home), label: Text('Main')),
    NavigationRailDestination(
      icon: Icon(Icons.devices_sharp),
      label: Text('Develop'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.photo_camera),
      label: Text('Photography'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.sports_gymnastics),
      label: Text('Trainings'),
    ),
  ];

  static Widget getpage(int? index) {
    switch (index) {
      case (0):
        return MainPage();
      case (1):
        return DeveloperPage();
      case (2):
        return PhotoPage();
      case (3):
        return TrainPage();
      default:
        throw UnimplementedError();
    }
  }
}
