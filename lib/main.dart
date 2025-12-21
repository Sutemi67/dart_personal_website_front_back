import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.red),
            child: Column(
              mainAxisSize: .min,
              children: [
                Text('Other app website'),
                ElevatedButton(
                  onPressed: () {
                    _launchUrl('http://localhost:7575/afisha');
                  },
                  child: Text('go to afisha'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String urlString) async {
  final Uri uri = Uri.parse(urlString);
  if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
    throw Exception('Could not launch $uri');
  }
}
