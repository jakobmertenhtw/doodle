


import 'dart:async';

import 'package:course_module/course_module.dart';
import 'package:doodle/features/auth/api/doodle_auth_api.dart';
import 'package:doodle/features/course/command_model/infrastructure/event_stores/event_store.dart';
import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:doodle/features/course/read_model/application/query_model/course_query_model.dart';
import 'package:doodle/features/user/api/doodle_user_api.dart';
import 'package:user_module/user_module.dart';

class CoursesProjector {
  final CourseQueryModel _queryModel;
  final EventStore _eventStore;
  final DoodleAuth _authModule;
  final DoodleUser _userModule;
  CoursesProjector(this._queryModel, this._eventStore, this._authModule, this._userModule);
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
    final currentUserId = await _authModule.getCurrentSignedInUserIdOrCrash();
    final userResult = await _userModule.getUserById(currentUserId);
    final user = userResult.fold((f) => throw Error, (user) => user);
    late CourseDto course;
    if (user.role == UserRole.teacher) {
      course = CourseDto.teacher(courseTitle: event.title, courseDescription: event.description, studentCount: 0);
    } else {
      final teacherResult = await _userModule.getUserById(event.teacherId);
      final teacher = teacherResult.fold((_) => throw Error(), (teacher) => teacher);
      course = CourseDto.student(courseTitle: event.title, courseDescription: event.description, teacherName: teacher.name.getOrCrash());
    }
    final courses = _queryModel.courses;
    courses.add(course);
    _queryModel.courses = courses;
    
  }
  void projectStudentAdded(StudentAddedToCourse event) async {
    // TODO: Implement
  }
}