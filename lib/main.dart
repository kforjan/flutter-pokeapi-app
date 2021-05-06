import 'package:flutter/material.dart';
import 'package:pokemon_api_app/constants/theme.dart';
import 'package:pokemon_api_app/injection_container.dart' as di;
import 'package:pokemon_api_app/ui/home/home_screen.dart';

import 'constants/strigns.dart';

void main() {
  di.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.pokedex,
      home: HomeScreen(),
      theme: themeData,
    );
  }
}
