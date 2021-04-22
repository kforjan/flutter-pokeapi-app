import 'package:flutter/material.dart';
import 'package:pokemon_api_app/data/network/apis/pokemon_api.dart';
import 'package:pokemon_api_app/locator.dart';
import 'package:pokemon_api_app/models/pokemon.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard(this.pokemonUrl, {Key key}) : super(key: key);

  final String pokemonUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FutureBuilder(
        future: locator<PokemonApi>().getPokemon(pokemonUrl),
        builder: (context, snapshot) {
          Pokemon pokemon = snapshot.data;
          return snapshot.connectionState == ConnectionState.done
              ? Image.network(pokemon.spriteUrl)
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
