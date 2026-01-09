import 'package:dart_personal_website_server/pages/destinations.dart';
import 'package:flutter/material.dart';

class AppActionButton extends StatelessWidget {
  const AppActionButton({
    super.key,
    required this.el,
    required this.onClick,
    required this.selectedIndex,
  });

  final Destination el;
  final int selectedIndex;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: 100,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: selectedIndex == el.pageIndex
            ? LinearGradient(
                colors: [colors.secondaryContainer, colors.tertiaryContainer],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 1],
              )
            : null,
      ),
      child: InkWell(
        onTap: onClick,
        child: Container(child: Text(el.label), alignment: .center),
      ),
    );
  }
}
