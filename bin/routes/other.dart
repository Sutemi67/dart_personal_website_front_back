import 'package:shelf_static/shelf_static.dart';

final otherHandler = createStaticHandler(
  'build/web',
  defaultDocument: 'index.html',
);
