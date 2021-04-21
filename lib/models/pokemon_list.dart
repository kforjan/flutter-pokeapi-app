import 'package:pokemon_api_app/models/pokemon.dart';

class PokemonList {
  PokemonList(this.pokemons);

  factory PokemonList.fromJson(Map<String, dynamic> json) {
    final List<dynamic> data = json['results'];
    final pokemons = data.map((pokemon) => Pokemon.fromMap(pokemon)).toList();
    return PokemonList(pokemons);
  }

  final List<Pokemon> pokemons;
}
