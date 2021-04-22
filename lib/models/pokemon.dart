import 'package:flutter/foundation.dart';

class Pokemon {
  Pokemon({
    @required this.name,
    @required this.spriteUrl,
  });

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    final pokemon =
        Pokemon(name: map['name'], spriteUrl: map['sprites']['front_default']);
    return pokemon;
  }

  final String name;
  final String spriteUrl;
}
