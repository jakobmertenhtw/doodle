import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/core/event_bus.dart';
import 'package:doodle/features/course/command_model/application/command_handler/command_handler.dart';
import 'package:doodle/features/course/command_model/application/commands/add_student_command.dart';

class AddStudentHandler
    implements CommandHandler<AddStudentCommand, CourseFailure> {
  final CourseRepository _repo;
  final EventBus _eventBus;
  AddStudentHandler(this._repo, this._eventBus);
  @override
  Future<Either<CourseFailure, Unit>> handle(AddStudentCommand command) async {
    final result = await _repo.loadById(command.courseId);
    if (result.isLeft()) return result.fold((failure) => left(failure), (_) => throw Error());
    final course = result.getOrElse(() => throw Error());
    List<CourseEvent> events = course.addStudent(command.studentId);
    _eventBus.emitList(events);
    return await _repo.save(course);
  }
}
