import 'package:flutter/material.dart';
import 'package:pokemon_api_app/data/network/apis/pokemon_url_list_api.dart';
import 'package:pokemon_api_app/locator.dart';
import 'package:pokemon_api_app/models/pokemon_list.dart';
import 'package:pokemon_api_app/ui/widgets/pokemon_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: locator<PokemonUrlsApi>().getPokemonUrls(),
          builder: (context, snapshot) {
            final PokemonList data = snapshot.data;

            return snapshot.connectionState == ConnectionState.done
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: data.pokemonUrls.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PokemonCard(data.pokemonUrls[index]['url']);
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
