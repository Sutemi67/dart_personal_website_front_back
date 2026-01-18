import 'dart:js_interop';
import 'package:flutter/services.dart';
import 'package:web/web.dart' as web;

Future<void> openPdfInNewTab() async {
  try {
    // Load PDF bytes from asset
    final ByteData bytes = await rootBundle.load('assets/model.pdf');
    final Uint8List list = bytes.buffer.asUint8List();
    // Create Blob from bytes
    final blob = web.Blob(
      [list] as JSArray<web.BlobPart>,
      web.BlobPropertyBag(type: 'application/pdf'),
    );
    // Create object URL
    final url = web.URL.createObjectURL(blob);

    // Open in new tab
    web.window.open(url, "_blank");

    // Note: Don't revoke URL immediately as it may cause the PDF to not load
    // The browser will handle cleanup when the tab is closed
    // If you need to revoke it later, you can store the URL and revoke on app close
  } catch (e) {
    print('Error opening PDF: $e');
    // Handle error appropriately
  }
}
