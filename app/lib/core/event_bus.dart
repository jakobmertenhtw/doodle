

import 'dart:async';

abstract class EventHandler<T> {
  void handle(T event);
}

class EventBus {
  final _handlers = <Type, List<Function>>{};
  final _streamControllers = <Type, StreamController>{};

  void register<T>(EventHandler<T> handler) {
    _handlers[T] ??= [];
    _handlers[T]!.add(handler.handle);
  }

  void emit<T>(T event) {
    final listeners = _handlers[T];
    if (listeners != null) {
      for (final handler in listeners) {
        handler(event);
      }
    }
    if (_streamControllers[T]?.isClosed != true) {
      _streamControllers[T]?.add(event);
    }
  }

  Stream<T> on<T>() {
    final type = T;
    _streamControllers[type] ??= StreamController<T>.broadcast();
    return _streamControllers[type]!.stream as Stream<T>;
  }
}