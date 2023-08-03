import 'package:flutter/material.dart';

import 'language_const.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translation(context).home),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(translation(context).home),
        ),
      ),
    );
  }
}