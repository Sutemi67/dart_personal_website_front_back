import 'package:shelf_static/shelf_static.dart';

final pongHandler = createStaticHandler(
  'public$pongEndpoint',
  defaultDocument: 'index.html',
);
const String pongEndpoint = '/pong';
