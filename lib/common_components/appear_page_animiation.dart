import 'package:flutter/material.dart';

class AppearPageAnimation extends StatefulWidget {
  const AppearPageAnimation({required this.child});
  final Widget child;

  @override
  State<StatefulWidget> createState() => _AppearPageAnimationState();
}

class _AppearPageAnimationState extends State<AppearPageAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> _fadeTransition;
  late Animation<Offset> _slideAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
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
    super.initState();
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
      child: SlideTransition(position: _slideAnimation, child: widget.child),
    );
  }
}
