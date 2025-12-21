import 'package:dart_personal_website_server/pages/pages_list.dart';
import 'package:flutter/material.dart';

class SiteApp extends StatefulWidget {
  const SiteApp({super.key});

  @override
  State<SiteApp> createState() => _SiteAppState();
}

class _SiteAppState extends State<SiteApp> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    Widget page = PagesList.getpage(selectedIndex);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Row(
          children: [
            NavigationRail(
              elevation: 15,
              extended: constraints.maxWidth >= 600,
              destinations: PagesList.pagesList,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              selectedIndex: selectedIndex,
            ),
            Expanded(child: page),
          ],
        ),
      ),
    );
  }
}
