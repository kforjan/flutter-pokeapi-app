import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokemon_api_app/constants/assets.dart';
import 'package:pokemon_api_app/data/network/apis/pokemon_api.dart';
import 'package:pokemon_api_app/locator.dart';
import 'package:pokemon_api_app/models/pokemon.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard(this.pokemonUrl, {Key key}) : super(key: key);

  final String pokemonUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: FutureBuilder(
          future: locator<PokemonApi>().getPokemon(pokemonUrl),
          builder: (context, snapshot) {
            Pokemon pokemon = snapshot.data;
            if (snapshot.hasError) {
              return SvgPicture.asset(Assets.pokeballPlaceholder);
            }
            return snapshot.connectionState == ConnectionState.done
                ? InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Center(
                                child: Text(pokemon.name),
                              ),
                            );
                          });
                    },
                    child: CachedNetworkImage(
                      imageUrl: pokemon.spriteUrl,
                      placeholder: (context, url) =>
                          SvgPicture.asset(Assets.pokeballPlaceholder),
                    ),
                  )
                : SvgPicture.asset(Assets.pokeballPlaceholder);
          },
        ),
      ),
    );
  }
}
