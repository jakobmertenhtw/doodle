


import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/command_model/application/command_handlers/command_handler.dart';
import 'package:doodle/features/course/command_model/application/commands/create_course_command.dart';
import 'package:doodle/features/course/command_model/application/event_publisher/course_event_publisher.dart';

class CreateCourseHandler implements CommandHandler<CreateCourseCommand, CourseFailure> {
  final CourseRepository _repo;
  final CourseEventPublisher _publisher;

  CreateCourseHandler(this._repo, this._publisher);

  @override
  Future<Either<CourseFailure, Unit>> handle(CreateCourseCommand command) async {
    Course course = Course.create(title: command.title, description: command.description, teacherId: command.teacherId);
    final result = await _repo.save(course);
    return result;

    // TODO: Implement the domain event 
    // final List<CourseEvent> events = course.pullDomainEvents();
    // for (final e in events) {
    //   await _publisher.publish(e);
    // }
  }
}