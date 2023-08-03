import 'package:flutter/material.dart';
import 'package:shimmerflutter/inapp-webview/inapp_webview.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const InAppWebViewPage()));
          },
          child: Text("Go to Website"),
        ),
      ),
    );
  }
}
