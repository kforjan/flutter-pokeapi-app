import 'package:pokemon_api_app/data/network/rest_client.dart';
import 'package:pokemon_api_app/models/pokemon.dart';

class PokemonApi {
  PokemonApi(this._restClient);

  RestClient _restClient;

  Future<Pokemon> getPokemon(String url) async {
    try {
      final response = await _restClient.get(url);
      final pokemon = Pokemon.fromMap(response);
      return pokemon;
    } catch (e) {
      throw e;
    }
  }
}
