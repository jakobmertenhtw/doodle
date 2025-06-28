

class Locator {

  static final Map<Type, dynamic> _singletons = {};

  static void register<T>(T instance) {
    _singletons[T] = instance;
  }

  static T get<T>() {
    final service = _singletons[T];
    if (service == null) {
      throw Exception("Service of type $T not found");
    }
    return service as T;
  }


}