abstract interface class EntityMapper<E> {
  const EntityMapper();

  /// Convert a model to an entity
  E toEntity();
}

extension EntityMapperListExtension<E> on List<EntityMapper<E>> {
  /// Parse a list of objects that implement [EntityMapper]
  /// to a list of entities
  List<E> toEntityList() => map((EntityMapper<E> e) => e.toEntity()).toList();
}
