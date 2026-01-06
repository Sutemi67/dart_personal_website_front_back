import 'package:dart_personal_website_server/common_components/appear_page_animiation.dart';
import 'package:flutter/material.dart';

class TrainPage extends StatelessWidget {
  const TrainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: const Column(
        children: [
          Text('Train page'),
          Card(
            margin: EdgeInsets.all(20),
            elevation: 2,
            child: Row(
              children: [
                Expanded(child: Image(image: AssetImage('me.jpg'))),
                Expanded(flex: 2, child: Text('describing text')),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Image(image: AssetImage('dco1.webp'))),
                  Expanded(child: Image(image: AssetImage('dco2.webp'))),
                  Expanded(child: Image(image: AssetImage('dco3.webp'))),
                  Expanded(child: Image(image: AssetImage('dco4.webp'))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
