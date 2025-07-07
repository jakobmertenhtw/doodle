

import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/command_model/infrastructure/event_stores/in_memory_course_event_store.dart';

class CourseEventSourcedRepository implements CourseRepository {

  final InMemoryCourseEventStore _eventStore;
  CourseEventSourcedRepository(this._eventStore);
  
  @override
  Future<Either<CourseFailure, Unit>> save(Course course) async {
    try {
      final events = course.pullDomainEvents();
      if (events.isEmpty) return right(unit);
      await (_eventStore.appendEvents('Course', course.id, events));
      return right(unit);
    } catch (e) {
      return left(CourseFailure.serverError());
    }
  }

  @override
  Future<Either<CourseFailure, Course>> loadById(String id) async {
    try {
      final List<CourseEvent> history = await _eventStore.loadEvents('Course', id);
      if (history.isEmpty) {
        // TODO: replace with CourseFailure.notFound
        return left(CourseFailure.serverError());
      }
      final course = Course.rehydrate(history); 
      return right(course);
    } catch (e) {
      return left(CourseFailure.serverError());
    }
  }

}