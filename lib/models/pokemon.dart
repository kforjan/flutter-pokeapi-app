import 'package:flutter/foundation.dart';

class Pokemon {
  Pokemon({
    @required this.name,
    @required this.spriteUrl,
  });

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      name: map['species']['name'],
      spriteUrl: map['sprites']['front_default'],
    );
  }

  final String name;
  final String spriteUrl;
}
