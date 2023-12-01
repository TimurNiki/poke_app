import 'sub_entities.dart';

 abstract class PokeEntity{
  final String name;
  final int id;
  final SpritesEntity sprites;
  final List<TypesEntity> types;

  PokeEntity({required this.name, required this.id, required this.sprites, required this.types});

 
}