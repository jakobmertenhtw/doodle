


import 'dart:async';

import 'package:course_module/course_module.dart';
import 'package:doodle/features/course/command_model/infrastructure/event_stores/event_store.dart';
import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:doodle/features/course/read_model/application/query_model/course_query_model.dart';

class CoursesProjector {
  final CourseQueryModel _queryModel;
  final EventStore _eventStore;

  CoursesProjector(this._queryModel, this._eventStore);

  StreamSubscription register() {
    return _eventStore.onEvent.listen((e) {
      if (e is CourseCreated) {
         projectCourseCreated(e);
      }
      if (e is StudentAddedToCourse) {
        projectStudentAdded(e);
      }
    });
  }

  void projectCourseCreated(CourseCreated event) async {
    // TODO: get the current user with their type and 
    final course = CourseDto.teacher(courseTitle: event.title, courseDescription: event.description, studentCount: 0);
    final courses = _queryModel.courses;
    courses.add(course);
    _queryModel.courses = courses;
    
  }
  void projectStudentAdded(StudentAddedToCourse event) async {
    // TODO: Implement
  }
}