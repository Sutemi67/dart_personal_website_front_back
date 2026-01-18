import 'package:dart_personal_website_server/presentation/pages/main_page/pdf_opener.dart';
import 'package:dart_personal_website_server/presentation/common_components/app_button.dart';
import 'package:flutter/material.dart';

import '../../../common_components/functions.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  static const padding = EdgeInsets.all(8.0);
  static const double buttonWidth = 150.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: padding,
          child: AppButton(
            onClick: () => goToUrl('@Sutemi67'),
            text: 'Email',
            width: buttonWidth,
          ),
        ),
        Padding(
          padding: padding,
          child: AppButton(
            onClick: () => goToUrl('urlString'),
            text: 'LinkedIn',
            width: buttonWidth,
          ),
        ),
        Padding(
          padding: padding,
          child: AppButton(
            onClick: () => goToUrl('https://t.me/Sutemi67'),
            text: 'Telegram',
            width: buttonWidth,
          ),
        ),
        Padding(
          padding: padding,
          child: AppButton(
            onClick: () => goToUrl('https://github.com/Sutemi67'),
            text: 'GitHub',
            width: buttonWidth,
          ),
        ),
        Padding(
          padding: padding,
          child: AppButton(
            onClick: () => openPdfInNewTab(),
            text: 'Download CV',
          ),
        ),
      ],
    );
  }
}
