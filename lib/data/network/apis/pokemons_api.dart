import 'package:pokemon_api_app/constants/endpoints.dart';
import 'package:pokemon_api_app/data/network/rest_client.dart';
import 'package:pokemon_api_app/models/pokemon_list.dart';

class PokemonsApi {
  PokemonsApi(this._restClient);

  final RestClient _restClient;

  Future<PokemonList> getPokemons() async {
    try {
      final response = await _restClient.get(Endpoints.getPokemons);
      final pokemons = PokemonList.fromJson(response);
      return pokemons;
    } catch (e) {
      throw e;
    }
  }
}
