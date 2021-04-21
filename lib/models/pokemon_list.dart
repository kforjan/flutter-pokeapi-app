import 'package:pokemon_api_app/models/pokemon.dart';

class PokemonList {
  PokemonList(this.pokemons);

  factory PokemonList.fromJson(List<dynamic> json) {
    final pokemons = json.map((pokemon) => Pokemon.fromMap(pokemon)).toList();
    return PokemonList(pokemons);
  }

  final List<Pokemon> pokemons;
}
