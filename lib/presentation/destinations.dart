import 'package:dart_personal_website_server/presentation/pages/developer_page/developer_page.dart';
import 'package:dart_personal_website_server/presentation/pages/donation_page/donation_page.dart';
import 'package:dart_personal_website_server/presentation/pages/main_page/main_page.dart';
import 'package:dart_personal_website_server/presentation/pages/photo_page/photo_page.dart';
import 'package:dart_personal_website_server/presentation/pages/train_page/train_page.dart';
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
    Destination(Icons.home_outlined, 'Main', MainPage(), 0),
    Destination(Icons.devices_outlined, 'Develop', DeveloperPage(), 1),
    Destination(Icons.camera_outlined, 'Photo', PhotoPage(), 2),
    Destination(Icons.sports_gymnastics_outlined, 'Sport', TrainPage(), 3),
    Destination(Icons.monetization_on_outlined, 'Donate', DonationPage(), 4),
  ];
}
