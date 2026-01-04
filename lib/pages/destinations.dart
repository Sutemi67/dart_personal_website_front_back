import 'package:dart_personal_website_server/pages/developer_page/developer_page.dart';
import 'package:dart_personal_website_server/pages/donation_page/donation_page.dart';
import 'package:dart_personal_website_server/pages/main_page/main_page.dart';
import 'package:dart_personal_website_server/pages/photo_page/photo_page.dart';
import 'package:dart_personal_website_server/pages/train_page/train_page.dart';
import 'package:flutter/material.dart';

class Destination {
  const Destination(this.icon, this.label, this.page, this.pageIndex);

  final IconData icon;
  final String label;
  final Widget page;
  final int pageIndex;
}

class Destinations {
  static const List<Destination> list = <Destination>[
    Destination(Icons.home, 'Main', MainPage(), 0),
    Destination(Icons.devices_sharp, 'Develop', DeveloperPage(), 1),
    Destination(Icons.camera, 'Photo', PhotoPage(), 2),
    Destination(Icons.sports_gymnastics, 'Sport', TrainPage(), 3),
    Destination(Icons.money, 'Donate', DonationPage(), 4),
  ];
}
