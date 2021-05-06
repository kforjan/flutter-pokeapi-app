import 'package:flutter/material.dart';
import 'package:pokemon_api_app/constants/strigns.dart';
import 'package:pokemon_api_app/data/network/apis/pokemon_url_list_api.dart';
import 'package:pokemon_api_app/injection_container.dart';
import 'package:pokemon_api_app/models/pokemon_list.dart';
import 'package:pokemon_api_app/ui/widgets/pokemon_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(Strings.pokedex),
        ),
      ),
      body: FutureBuilder(
          future: locator<PokemonUrlsApi>().getPokemonUrls(),
          builder: (context, snapshot) {
            final PokemonList data = snapshot.data;
            if (snapshot.hasError) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('No internet!'),
                    Text('Please reconnect and try again!'),
                    SizedBox(
                      height: 15,
                    ),
                    FutureBuilder(
                      future: Future.delayed(
                        Duration(seconds: 2),
                      ),
                      builder: (context, snapshot) =>
                          snapshot.connectionState == ConnectionState.done
                              ? Container(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    child: Text('Retry'),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Theme.of(context).primaryColor),
                                    ),
                                  ),
                                )
                              : Container(
                                  height: 50,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Theme.of(context).primaryColor),
                                    ),
                                  ),
                                ),
                    ),
                  ],
                ),
              );
            }
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
