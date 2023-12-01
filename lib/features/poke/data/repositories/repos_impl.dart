// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/connection/network.dart';
import 'package:pokemon_app/core/errors/failure.dart';
import 'package:pokemon_app/core/params/params.dart';
import 'package:pokemon_app/features/poke/business/entities/poke_entitity.dart';
import 'package:pokemon_app/features/poke/business/repositories/poke_repository.dart';
import 'package:pokemon_app/features/poke/data/data_sources/local.dart';
import 'package:pokemon_app/features/poke/data/data_sources/remote.dart';

import '../../../../core/errors/exceptions.dart';

class RepositoryImpl implements PokeRepository {
  
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final NetworkInformation networkInformation;
  RepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInformation,
  });
@override
  Future<Either<Failure, PokeEntity>> getPoke({required PokeParams params}) async {
    if(await networkInformation.isConnected!){
      try {
        final remotePokemon =
            await remoteDataSource.getPoke(params: params);

        localDataSource.cachePoke(remotePokemon);

        return Right(remotePokemon);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else{
      try{
        final localPokemon = await localDataSource.getLastPoke();
        return Right(localPokemon);
      }on CacheException{
        return Left(CacheFailure(errorMessage: "No local data"));
      }
    }
  }

}
