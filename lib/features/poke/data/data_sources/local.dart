// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:pokemon_app/core/errors/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pokemon_app/features/poke/data/models/poke_model.dart';

abstract class LocalDataSource {
  Future<void>? cachePoke(PokeModel? pokeToCache);

  Future<PokeModel> getLastPoke();
}

const cachedPoke = 'CACHED_POKE';

class LocalDataSourceImpl implements LocalDataSource {
  final SharedPreferences sharedPreferences;
  LocalDataSourceImpl({
    required this.sharedPreferences,
  });

  @override
  Future<void>? cachePoke(PokeModel? pokeToCache) async {
    if (pokeToCache != null) {
      sharedPreferences.setString(
        cachedPoke,
        json.encode(
          pokeToCache.toJson(),
        ),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<PokeModel> getLastPoke() {
    final jsonString = sharedPreferences.getString(cachedPoke);

    if (jsonString != null) {
      return Future.value(PokeModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }
}
