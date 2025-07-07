

import 'package:course_module/src/model/entities/course.dart';
import 'package:course_module/src/error/failures/course_failures.dart';
import 'package:dartz/dartz.dart';

abstract class CourseRepository {
  Future<Either<CourseFailure, Unit>> save(Course course);
  Future<Either<CourseFailure, Course>> loadById(String id);
}