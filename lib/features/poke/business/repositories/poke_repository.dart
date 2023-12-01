import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/errors/failure.dart';
import 'package:pokemon_app/features/poke/business/entities/poke_entitity.dart';

import '../../../../core/params/params.dart';

abstract class PokeRepository{
  Future<Either<Failure,PokeEntity>> getPoke({required PokeParams params});
}