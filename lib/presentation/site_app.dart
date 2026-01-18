import 'package:dart_personal_website_server/presentation/common_components/actions_buttons.dart';
import 'package:dart_personal_website_server/presentation/common_components/app_styles.dart';
import 'package:flutter/material.dart';

import 'destinations.dart';

class SiteApp extends StatefulWidget {
  const SiteApp({super.key});

  @override
  State<SiteApp> createState() => _SiteAppState();
}

class _SiteAppState extends State<SiteApp> {
  int _selectedIndex = 0;
  bool isWidescreen = false;
  late final colors = context.themeColors;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final orientation = MediaQuery.of(context).orientation;
    isWidescreen = orientation == Orientation.landscape;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: isWidescreen
            ? Destinations.list.map((el) {
                return AppActionButton(
                  el: el,
                  selectedIndex: _selectedIndex,
                  onClick: () {
                    setState(() {
                      _selectedIndex = el.pageIndex;
                    });
                  },
                );
              }).toList()
            : null,
      ),
      bottomNavigationBar: isWidescreen
          ? null
          : NavigationBar(
              indicatorColor: colors.primary.withAlpha(130),
              destinations: Destinations.list.map((el) {
                return NavigationDestination(
                  icon: Icon(el.icon),
                  label: el.label,
                );
              }).toList(),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (value) => setState(() {
                _selectedIndex = value;
              }),
            ),
      body: Destinations.list[_selectedIndex].page,
    );
  }
}
