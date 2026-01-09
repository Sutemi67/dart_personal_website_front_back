import 'package:dart_personal_website_server/common_components/appear_page_animation.dart';
import 'package:dart_personal_website_server/pages/main_page/components/button_row.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _textScheme = Theme.of(context).textTheme;
  late final _descriptionStyle = _textScheme.titleMedium!.copyWith(
    color: _colorScheme.onSurface,
  );
  late final _titleStyle = _textScheme.headlineLarge!.copyWith(
    color: _colorScheme.primary,
  );

  @override
  Widget build(BuildContext context) {
    return AppearPageAnimation(
      child: Column(
        children: [
          Text('Hi, my name is Sergey', style: _titleStyle),
          Text('Developer, athlete and photographer', style: _descriptionStyle),
          SizedBox(
            width: double.infinity,
            child: Card(
              color: _colorScheme.surfaceContainerHigh,
              margin: const EdgeInsets.all(25),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      textAlign: .center,
                      style: _descriptionStyle,
                      'Hello! This is my personal page dedicated to my capabilities and interests. My path includes mobile application development, active sports and passion for photography.',
                    ),
                    Text(
                      textAlign: .center,
                      'For any questions and suggestions, you can contact me in any of the ways presented.',
                      style: _descriptionStyle,
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
