import 'package:flutter/material.dart';

import 'button_pre.dart';
import 'buttons.dart';
import 'detail_screen.dart';
import 'frist_page.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: friist(),
      debugShowCheckedModeBanner: false,
    );
  }
}
