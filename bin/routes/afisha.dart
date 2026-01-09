import 'package:shelf_static/shelf_static.dart';

final afishaHandler = createStaticHandler(
  'public$afishaEndpoint',
  defaultDocument: 'index.html',
);
const String afishaEndpoint = '/afisha';
