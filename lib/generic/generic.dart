typedef T JsonFactory<T>(Map<String, dynamic> json);

class Generic {
  static Type _typeOf<T>() => T;
  static Map<Type, dynamic> _factories = {};

  static void register<T>(JsonFactory<T> factoryMethod) {
    _factories[_typeOf<T>()] = factoryMethod;
  }

  static T fromJson<T>(Map<String, dynamic> json) {
    return _factories[_typeOf<T>()](json);
  }
}
