import 'package:dart_personal_website_server/presentation/common_components/appear_page_animation.dart';
import 'package:dart_personal_website_server/presentation/pages/donation_page/components/landscape.dart';
import 'package:dart_personal_website_server/presentation/pages/donation_page/components/portrait.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isWidescreen =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return AppearPageAnimation(
      child: isWidescreen ? DonatePageLand() : DonatePagePortrait(),
    );
  }
}
