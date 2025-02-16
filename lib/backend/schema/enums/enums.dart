import 'package:collection/collection.dart';

enum Venuetype {
  indoor,
  outdoor,
}

enum CateringType {
  veg,
  nonVeg,
  both,
}

enum ServingType {
  buffet,
  serving,
  both,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Venuetype):
      return Venuetype.values.deserialize(value) as T?;
    case (CateringType):
      return CateringType.values.deserialize(value) as T?;
    case (ServingType):
      return ServingType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
