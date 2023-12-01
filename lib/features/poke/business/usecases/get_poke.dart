import 'package:dartz/dartz.dart';
import 'package:pokemon_app/features/poke/business/entities/poke_entitity.dart';
import 'package:pokemon_app/features/poke/business/repositories/poke_repository.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/params/params.dart';

final class GetPoke {
  final PokeRepository repository;

  GetPoke(this.repository);

  Future<Either<Failure, PokeEntity>> call({required PokeParams params}) async {
    return await repository.getPoke(params: params);
  }
}
