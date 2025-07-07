import 'dart:async';

import 'package:course_module/course_module.dart';
import 'package:doodle/features/course/command_model/infrastructure/event_stores/event_store.dart';

class InMemoryCourseEventStore implements EventStore<CourseEvent> {

  final _controller = StreamController<CourseEvent>.broadcast();

  @override
  Stream<CourseEvent> get onEvent => _controller.stream;
  
  final Map<String, List<CourseEvent>> _store = {};

  @override
  Future<void> appendEvents(
    String aggregateName,
    String identifier,
    List<CourseEvent> events,
  ) async {
    _store.putIfAbsent(identifier, () => []).addAll(events);
    for (var event in events) {
      _controller.add(event);
    }
  }

  @override
  Future<List<CourseEvent>> loadEvents(
    String aggregateName,
    String identifier,
  ) async {
    return List<CourseEvent>.from(_store[identifier] ?? []);
  }

  void dispose() {
    _controller.close();
  }
}
