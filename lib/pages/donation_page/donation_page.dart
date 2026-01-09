import 'package:dart_personal_website_server/common_components/app_button.dart';
import 'package:dart_personal_website_server/common_components/appear_page_animation.dart';
import 'package:flutter/material.dart';

import '../../common_components/functions.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Text(
              'If you want to support me, please follow any link below:',
            ),
            Card(
              margin: const EdgeInsets.all(22),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: AppButton(
                      text: 'U-money',
                      onClick: () => goToUrl('urlString'),
                    ),
                  ),
                  AppButton(
                    text: 'Cloud tips',
                    onClick: () =>
                        goToUrl('https://pay.cloudtips.ru/p/2d71d3e5'),
                  ),
                  const Image(image: AssetImage('payments/qrCode.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
