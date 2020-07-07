//7

import 'package:flutter/material.dart';
// for web page purpose install webview plugin
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create safe area for app bar
    return SafeArea(
      // web view scaffold
      child: WebviewScaffold(
          bottomNavigationBar:
              FloatingActionButton(onPressed: () => Navigator.pop(context)),
          url: 'https:\\www.google.com'),
    );
  }
}
