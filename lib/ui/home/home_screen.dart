import 'package:flutter/material.dart';
import 'package:pokemon_api_app/data/network/apis/pokemon_url_list_api.dart';
import 'package:pokemon_api_app/locator.dart';
import 'package:pokemon_api_app/models/pokemon_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: locator<PokemonsApi>().getPokemonUrls(),
          builder: (context, snapshot) {
            final PokemonList data = snapshot.data;

            return snapshot.connectionState == ConnectionState.done
                ? ListView.builder(
                    itemCount: data.pokemonUrls.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(data.pokemonUrls[index]['name']);
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
