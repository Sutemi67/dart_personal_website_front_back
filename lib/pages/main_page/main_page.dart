import 'package:dart_personal_website_server/common_components/appear_page_animiation.dart';
import 'package:dart_personal_website_server/pages/main_page/components/button_row.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: Column(
        mainAxisAlignment: .start,
        children: [
          Text('Hi, my name is Sergey'),
          Text('Developer, athlete and photographer'),
          Card(
            margin: EdgeInsets.all(22),
            elevation: 10,
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                children: [
                  Text(
                    'Hello! This is my personal page dedicated to my capabilities and interests. My path includes mobile application development, active sports and passion for photography. For any questions and suggestions, you can contact me in any of the ways presented.',
                  ),
                  Divider(height: 2),
                  ButtonRow(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
