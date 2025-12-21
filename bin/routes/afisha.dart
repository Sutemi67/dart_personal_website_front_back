import 'package:shelf_static/shelf_static.dart';

final afishaHandler = createStaticHandler(
  'public/afisha',
  defaultDocument: 'index.html',
);
