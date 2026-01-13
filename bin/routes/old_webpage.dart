import 'package:shelf_static/shelf_static.dart';

final oldWebpageHandler = createStaticHandler(
  'public$oldWebsiteEndpoint',
  defaultDocument: 'index.html',
);
const String oldWebsiteEndpoint = '/old_website';
