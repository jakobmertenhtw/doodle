

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
    _emitInternal(event as Object);
  }

  void emitList(List<Object> events) {
    for (final event in events) {
      _emitInternal(event);
    }
  }

  void _emitInternal(Object event) {
    final type = event.runtimeType;

    final listeners = _handlers[type];
    if (listeners != null) {
      for (final handler in listeners) {
        handler(event);
      }
    }

    final streamController = _streamControllers[type];
    if (streamController != null && !streamController.isClosed) {
      streamController.add(event);
    }
  }

  Stream<T> on<T>() {
    final type = T;
    _streamControllers[type] ??= StreamController<T>.broadcast();
    return _streamControllers[type]!.stream as Stream<T>;
  }
}