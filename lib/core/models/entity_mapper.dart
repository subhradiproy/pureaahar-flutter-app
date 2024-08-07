abstract interface class EntityMapper<E> {
  const EntityMapper();

  /// Convert a model to an entity
  E toEntity();
}

extension EntityMapperListExtension<E> on List<EntityMapper<E>> {
  /// Parse a list of objects that implement [EntityMapper]
  /// to a list of entities
  List<E> toEntityList() => map((EntityMapper<E> e) => e.toEntity()).toList();

  /// Run a filter during the conversion of a list of objects
  /// that implement [EntityMapper] to a list of entities
  List<E> toEntityListWhere(bool Function(E) test) {
    return fold<List<E>>(
      <E>[],
      (List<E> prev, EntityMapper<E> current) {
        final E entity = current.toEntity();
        if (test(entity)) prev.add(entity);
        return prev;
      },
    );
  }
}
