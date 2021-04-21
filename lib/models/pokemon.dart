import 'package:flutter/foundation.dart';

class Pokemon {
  Pokemon({
    @required this.name,
    @required this.url,
  });

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    final pokemon = Pokemon(name: map['name'], url: map['url']);
    return pokemon;
  }

  final String name;
  final String url;
}
