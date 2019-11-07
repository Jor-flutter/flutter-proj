import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_page/pag1.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Login(),
    );
  }
}
