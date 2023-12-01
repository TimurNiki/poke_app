// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pokemon_app/core/errors/exceptions.dart';
import 'package:pokemon_app/core/params/params.dart';
import 'package:pokemon_app/features/poke/data/models/poke_model.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<PokeModel> getPoke({required PokeParams params});
}

abstract class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio dio;
  RemoteDataSourceImpl({
    required this.dio,
  });

  @override
  Future<PokeModel> getPoke({required PokeParams params}) async {
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon/${params.id}',
      queryParameters: {
        'api_key': 'if you need',
      },
    );

    if (response.statusCode == 200) {
      return PokeModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
