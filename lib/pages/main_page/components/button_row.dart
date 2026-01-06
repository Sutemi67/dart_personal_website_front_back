import 'package:dart_personal_website_server/pages/main_page/components/buttor_row_functions.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => goToUrl('@Sutemi67'),
            child: const Text('Email'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => goToUrl('urlString'),
            child: const Text('LinkedIn'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => goToUrl('https://t.me/Sutemi67'),
            child: const FittedBox(child: Text('Telegram')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => goToUrl('https://github.com/Sutemi67'),
            child: const Text('GitHub'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Download CV'),
          ),
        ),
      ],
    );
  }
}
