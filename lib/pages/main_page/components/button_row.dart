import 'package:dart_personal_website_server/pages/main_page/components/buttor_row_functions.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(onPressed: () => goToUrl, child: Text('Email')),
        ),
        Expanded(
          child: ElevatedButton(onPressed: () {}, child: Text('LinkedIn')),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const FittedBox(child: Text('Telegram')),
          ),
        ),
        Expanded(
          child: ElevatedButton(onPressed: () {}, child: Text('GitHub')),
        ),
      ],
    );
  }
}
