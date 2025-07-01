

class Locator {

  static final Map<Type, dynamic> _singletons = {};

  static void register<T>(T instance) {
    _singletons[T] = instance;
  }

  static T get<T>() {
    final singleton = _singletons[T];
    if (singleton == null) {
      throw Exception("Service of type $T not found");
    }
    return singleton as T;
  }


}