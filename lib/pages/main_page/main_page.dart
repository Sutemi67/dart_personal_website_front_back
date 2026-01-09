import 'package:dart_personal_website_server/common_components/appear_page_animation.dart';
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
          const Text('Hi, my name is Sergey'),
          const Text('Developer, athlete and photographer'),
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Theme.of(context).colorScheme.surfaceContainerHigh,
              margin: EdgeInsets.all(22),
              elevation: 10,
              child: Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Column(
                  children: [
                    Text(
                      textAlign: .center,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      'Hello! This is my personal page dedicated to my capabilities and interests. My path includes mobile application development, active sports and passion for photography.',
                    ),
                    Text(
                      textAlign: .center,
                      'For any questions and suggestions, you can contact me in any of the ways presented.',
                    ),
                    ButtonRow(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
