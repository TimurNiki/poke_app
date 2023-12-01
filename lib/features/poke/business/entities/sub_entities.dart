final class SpritesEntity {
  final OtherEntity other;

  SpritesEntity(this.other);
}

final class OtherEntity {
  final OfficialArtEntity officialArt;

  OtherEntity(this.officialArt);
}

final class OfficialArtEntity {
  final String frontDefault;
  final String frontShiny;
  const OfficialArtEntity({
    required this.frontDefault,
    required this.frontShiny,
  });
}

final class TypesEntity {
  final TypeEntity type;
  const TypesEntity({
    required this.type,
  });
}

final class TypeEntity {
  final String name;
  const TypeEntity({
    required this.name,
  });
}
