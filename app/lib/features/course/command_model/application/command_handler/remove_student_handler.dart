import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/command_model/application/command_handler/command_handler.dart';
import 'package:doodle/features/course/command_model/application/commands/remove_student_command.dart';
import 'package:event_bus/event_bus.dart';

class RemoveStudentHandler
    implements CommandHandler<RemoveStudentCommand, CourseFailure> {
  final CourseRepository _repo;
  final EventBus _eventBus;

  RemoveStudentHandler(this._repo, this._eventBus);

  @override
  Future<Either<CourseFailure, Unit>> handle(
    RemoveStudentCommand command,
  ) async {
    final result = await _repo.loadById(command.courseId);
    final course = result.fold(
      (failure) => throw Exception('Failed to load the course: $failure'),
      (course) => course,
    );
    List<CourseEvent> events = course.removeStudent(command.studentId);
    for (final event in events) {
      _eventBus.fire(event);
    }
    return await _repo.save(course);
  }
}
