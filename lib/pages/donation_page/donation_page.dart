import 'package:dart_personal_website_server/common_components/appear_page_animiation.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text('If you want to support me, please follow any link below:'),
            Card(
              margin: EdgeInsets.all(22),
              child: Column(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Umoney')),
                  ElevatedButton(onPressed: () {}, child: Text('Cloud Tips')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
