import 'package:dart_personal_website_server/pages/main_page/components/button_row.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> _fadeTransition;
  late Animation<Offset> _slideAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _fadeTransition = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    _slideAnimation = Tween(begin: Offset(0, 0.04), end: Offset.zero).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeTransition,
      child: SlideTransition(
        position: _slideAnimation,
        child: const Column(
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
      ),
    );
  }
}
