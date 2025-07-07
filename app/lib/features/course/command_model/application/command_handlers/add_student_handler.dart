

import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/command_model/application/command_handlers/command_handler.dart';
import 'package:doodle/features/course/command_model/application/commands/add_student_command.dart';
import 'package:doodle/features/course/command_model/application/event_publisher/course_event_publisher.dart';

class AddStudentHandler implements CommandHandler<AddStudentCommand, CourseFailure> {
  final CourseRepository _repo;
  final CourseEventPublisher _publisher;
  AddStudentHandler(this._repo, this._publisher);
  @override
  Future<Either<CourseFailure, Unit>> handle(AddStudentCommand command) async {
    final result = await _repo.loadById(command.courseId);
    final course = result.fold(
      (failure) => throw Exception('Failed to load course: $failure'), 
      (course) => course);
    List<CourseEvent> events = course.addStudent(command.studentId);
    return await _repo.save(course);
    // TODO: Implement the domain event in the publisher
  }
}