import 'package:get_it/get_it.dart';
import 'package:pokemon_api_app/data/network/apis/pokemons_api.dart';
import 'package:pokemon_api_app/data/network/rest_client.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton(() => PokemonsApi(RestClient()));
}
