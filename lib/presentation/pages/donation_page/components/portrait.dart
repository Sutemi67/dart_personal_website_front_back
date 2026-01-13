import 'package:dart_personal_website_server/presentation/common_components/app_styles.dart';
import 'package:dart_personal_website_server/presentation/pages/donation_page/components/donate_constants.dart';
import 'package:flutter/material.dart';

import '../../../common_components/app_button.dart';
import '../../../common_components/functions.dart';

class DonatePagePortrait extends StatelessWidget {
  const DonatePagePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(DonatePageConstants.pageTitle, style: context.titleStyle),
          Text(DonatePageConstants.pageDescription, style: context.bodyStyle),
          Container(
            width: double.infinity,
            child: Card(
              color: context.themeColors.surfaceContainerHigh,
              margin: DonatePageConstants.paddings,
              child: Column(
                children: [
                  Padding(
                    padding: DonatePageConstants.paddings,
                    child: AppButton(
                      text: 'U-money',
                      width: DonatePageConstants.buttonsWidth,
                      onClick: () => goToUrl(DonatePageConstants.uMoneyUrl),
                    ),
                  ),
                  Padding(
                    padding: DonatePageConstants.paddings,
                    child: AppButton(
                      text: 'Cloud tips',
                      width: DonatePageConstants.buttonsWidth,
                      onClick: () => goToUrl(DonatePageConstants.cloudTipsUrl),
                    ),
                  ),
                  Padding(
                    padding: DonatePageConstants.paddings,
                    child: Container(
                      height: 300,
                      child: const Image(
                        image: AssetImage(DonatePageConstants.qrAssetPath),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
