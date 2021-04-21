import 'package:flutter/material.dart';

import 'constants/strigns.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.pokedex,
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(),
      ),
    );
  }
}
