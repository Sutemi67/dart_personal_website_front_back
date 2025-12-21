import 'package:shelf_static/shelf_static.dart';

final rootWebpageHandler = createStaticHandler(
  'public/main',
  defaultDocument: 'index.html',
);
