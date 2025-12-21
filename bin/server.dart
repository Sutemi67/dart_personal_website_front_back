import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'routes/afisha.dart';
import 'routes/pong.dart';
import 'routes/old_webpage.dart';
import 'routes/other.dart';

void main() async {
  final Router routes = Router()
    ..mount('/pong', pongHandler)
    ..mount('/afisha', afishaHandler)
    ..mount('/new', newWebsiteHandler)
    ..mount('/', oldWebpageHandler);

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(routes.call);

  final server = await serve(handler, InternetAddress.anyIPv4, 7575);
  print(handler);
  print('Server port:${server.address.host} ${server.port}');
}
