import 'package:flutter/material.dart';
import 'package:shimmerflutter/inapp-webview/inapp_webview.dart';
import 'package:shimmerflutter/page/shimmer_loading.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: InAppWebViewPage()
    );
  }
}