import 'package:url_launcher/url_launcher.dart';

Future<void> goToUrl(String urlString) async {
  final Uri uri = Uri.parse(urlString);
  if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
    throw Exception('Could not launch $uri');
  }
}
