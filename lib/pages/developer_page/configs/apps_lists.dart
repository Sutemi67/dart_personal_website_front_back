import 'package:dart_personal_website_server/pages/developer_page/configs/app_info.dart';

class AppsLists {
  static const List<AppInfo> kotlinList = [
    AppInfo(
      title: 'Friends Activity',
      description: 'description',
      imageUrl: 'assets/photo10.webp',
      urlToOpen: '',
    ),
    AppInfo(
      title: 'WOT Calc',
      description: 'description',
      imageUrl: 'assets/photo11.webp',
      urlToOpen: '',
    ),
    AppInfo(
      title: 'Feelings Diary',
      description: 'description',
      imageUrl: 'assets/photo14.webp',
      urlToOpen: '',
    ),
  ];
  static const List<AppInfo> flutterList = [
    AppInfo(
      title: 'Afisha',
      description: 'description',
      imageUrl: 'assets/photo13.webp',
      urlToOpen: 'http://localhost:7575/afisha',
    ),
    AppInfo(
      title: 'Pong game',
      description: 'description',
      imageUrl: 'assets/photo15.webp',
      urlToOpen: 'http://localhost:7575/pong',
    ),
    AppInfo(
      title: 'Old website',
      description: 'description',
      imageUrl: 'assets/photo20.webp',
      urlToOpen: 'http://localhost:7575/',
    ),
  ];
}
