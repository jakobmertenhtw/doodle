

import 'dart:convert';

import 'package:course_module/src/event/course_events.dart';
import 'package:doodle/core/event_bus.dart';
import 'package:doodle/features/course/command_model/application/event_publisher/course_event_publisher.dart';

class CourseEventPublisherImpl implements CourseEventPublisher {

  EventBus _bus;

  CourseEventPublisherImpl(this._bus);

  @override
  Future<void> publish(CourseEvent event) async {
    // TODO: Implement the event publisher
    //_bus.fire(event);
  }

}