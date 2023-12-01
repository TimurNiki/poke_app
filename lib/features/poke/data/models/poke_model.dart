import 'package:pokemon_app/features/poke/data/models/sub_model.dart';
import '../../../../../core/constants/app_strings.dart';

import '../../business/entities/poke_entitity.dart';

 class PokeModel extends PokeEntity {
   PokeModel({
    required String name,
    required int id,
    required SpritesModel sprites,
    required List<TypesModel> types,
  }) : super(
          name: name,
          id: id,
          sprites: sprites,
          types: types,
        );

  factory PokeModel.fromJson(Map<String, dynamic> json) {
    return PokeModel(
      name: json[kName],
      id: json[kId],
      sprites: SpritesModel.fromJson(json[kSprites]),
      types: TypesModel.fromJson(json[kTypes]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      kName: name,
      kId: id,
      kSprites: sprites,
      kTypes: types,
    };
  }
}
