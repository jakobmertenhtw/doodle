

import 'package:ddd_core_module/ddd_core_module.dart';
import 'package:flutter/material.dart';

abstract class AggregateRoot<T> extends Entity {
  final List<T> _events = [];
  @protected
  void recordEvent(T event) {
    _events.add(event);
  }
  List<T> pullDomainEvents() {
    final events = List<T>.from(_events);
    _events.clear();
    return events;
  }
  void apply(T event);
}