import 'package:shelf_static/shelf_static.dart';

final oldWebpageHandler = createStaticHandler(
  'public/old_website',
  defaultDocument: 'index.html',
);
