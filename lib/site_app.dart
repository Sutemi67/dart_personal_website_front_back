import 'package:dart_personal_website_server/pages/destinations.dart';
import 'package:flutter/material.dart';

class SiteApp extends StatefulWidget {
  const SiteApp({super.key});

  @override
  State<SiteApp> createState() => _SiteAppState();
}

class _SiteAppState extends State<SiteApp> {
  int _selectedIndex = 0;
  bool isWidescreen = false;

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
        title: const Text('Leading data'),
        actions: isWidescreen
            ? Destinations.list.map((el) {
                return TextButton(
                  onPressed: () => setState(() {
                    _selectedIndex = el.pageIndex;
                  }),
                  child: Text(el.label),
                );
              }).toList()
            : null,
      ),
      bottomNavigationBar: isWidescreen
          ? null
          : NavigationBar(
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
