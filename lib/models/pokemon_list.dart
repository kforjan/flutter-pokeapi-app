class PokemonList {
  PokemonList(this.pokemonUrls);

  factory PokemonList.fromJson(Map<String, dynamic> json) {
    final List<dynamic> pokemonUrls = json['results'];
    return PokemonList(pokemonUrls);
  }

  final List<dynamic> pokemonUrls;
}
