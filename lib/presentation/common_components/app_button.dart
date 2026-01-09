import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onClick,
    this.width,
  });

  final String text;
  final Function onClick;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () => onClick(),
      child: Container(
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            style: TextStyle(color: colors.onPrimaryContainer),
            textAlign: .center,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(9)),
          gradient: LinearGradient(
            colors: [colors.secondaryContainer, colors.tertiaryContainer],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(100),
              offset: Offset(1, 3),
              blurRadius: 3,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
