import 'package:dart_personal_website_server/pages/donation_page/components/donate_constants.dart';
import 'package:flutter/material.dart';

import '../../../common_components/app_button.dart';
import '../../../common_components/functions.dart';

class DonatePagePortrait extends StatelessWidget {
  const DonatePagePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            DonatePageConstants.pageTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(color: colors.primary),
          ),
          Text(
            DonatePageConstants.pageDescription,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: colors.onSurface),
          ),
          Container(
            width: double.infinity,
            child: Card(
              color: Theme.of(context).colorScheme.surfaceContainerHigh,
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
