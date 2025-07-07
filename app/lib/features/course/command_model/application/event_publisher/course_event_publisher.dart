

import 'package:course_module/course_module.dart';

abstract class CourseEventPublisher {
  Future<void> publish(CourseEvent event);
}