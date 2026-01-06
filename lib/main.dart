import 'package:dart_personal_website_server/site_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  TextTheme get textTheme => GoogleFonts.montserratTextTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: textTheme,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: SiteApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
