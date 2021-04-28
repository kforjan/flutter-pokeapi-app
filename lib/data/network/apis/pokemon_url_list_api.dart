import 'package:pokemon_api_app/constants/endpoints.dart';
import 'package:pokemon_api_app/data/network/rest_client.dart';
import 'package:pokemon_api_app/models/pokemon_list.dart';

class PokemonUrlsApi {
  PokemonUrlsApi(this._restClient);

  final RestClient _restClient;

  Future<PokemonList> getPokemonUrls() async {
    try {
      final response = await _restClient.get(Endpoints.getPokemons);
      final pokemonUrls = PokemonList.fromJson(response);

      return pokemonUrls;
    } catch (e) {
      throw e;
    }
  }
}
