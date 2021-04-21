import 'package:flutter/material.dart';
import 'package:pokemon_api_app/locator.dart';
import 'package:pokemon_api_app/ui/home/home_screen.dart';

import 'constants/strigns.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.pokedex,
      home: HomeScreen(),
    );
  }
}
