import 'package:dart_personal_website_server/common_components/appear_page_animation.dart';
import 'package:dart_personal_website_server/pages/donation_page/components/landscape.dart';
import 'package:dart_personal_website_server/pages/donation_page/components/portrait.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return AppearPageAnimation(
      child: orientation == Orientation.landscape
          ? DonatePageLand()
          : DonatePagePortrait(),
    );
  }
}
