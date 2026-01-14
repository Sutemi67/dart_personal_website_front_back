import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

import 'routes/afisha.dart';
import 'routes/new_website.dart';
import 'routes/old_webpage.dart';
import 'routes/pong.dart';

void main() async {
  final Router routes = Router()
    ..mount(pongEndpoint, pongHandler)
    ..mount(afishaEndpoint, afishaHandler)
    ..mount(oldWebsiteEndpoint, oldWebpageHandler)
    ..mount('/', newWebsiteHandler);

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(routes.call);

  final server = await serve(handler, InternetAddress.anyIPv4, 7575);

  print('Server listening ip: ${server.address.host}, port: ${server.port}');
}
