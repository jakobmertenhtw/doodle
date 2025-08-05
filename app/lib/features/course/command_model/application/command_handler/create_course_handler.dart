


import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/command_model/application/command_handler/command_handler.dart';
import 'package:doodle/features/course/command_model/application/commands/create_course_command.dart';

class CreateCourseHandler implements CommandHandler<CreateCourseCommand, CourseFailure> {
  final CourseRepository _repo;

  CreateCourseHandler(this._repo);

  @override
  Future<Either<CourseFailure, Unit>> handle(CreateCourseCommand command) async {
    Course course = Course.create(title: command.title, description: command.description, teacherId: command.teacherId);
    final result = await _repo.save(course);
    return result;
  }
}