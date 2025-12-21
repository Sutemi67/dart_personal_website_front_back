import 'package:shelf_static/shelf_static.dart';

final pongHandler = createStaticHandler(
  'public/pong',
  defaultDocument: 'index.html',
);
