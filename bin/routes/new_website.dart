import 'package:shelf_static/shelf_static.dart';

final newWebsiteHandler = createStaticHandler(
  'build/web',
  defaultDocument: 'index.html',
);
