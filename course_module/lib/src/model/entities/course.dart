import 'package:course_module/course_module.dart';
import 'package:ddd_core_module/ddd_core_module.dart';
import 'package:uuid/uuid.dart';

class Course extends AggregateRoot<CourseEvent> {
  @override
  late String id;
  late CourseTitle title;
  late CourseDescription description;
  late Teacher teacher;
  List<Student> enrolledStudents = [];
  List<LearnContent> contentList = [];
  List<CourseTask> taskList = [];
  bool isActive = true;

  Course(
    this.id,
    this.title,
    this.description,
    this.teacher,
    this.enrolledStudents,
    this.isActive,
    this.contentList,
    this.taskList,
  );

  Course._();

  factory Course.create({
    required CourseTitle title, 
    required CourseDescription description, 
    required String teacherId
  }) {
    final course = Course._();
    course.id = Uuid().v4();
    course.title = title;
    course.description = description;
    course.teacher = Teacher(teacherId);

    final event = CourseCreated(courseId: course.id, teacherId: teacherId, title: title.getOrCrash(), description: title.getOrCrash());
    course.apply(event);
    return course;
  }

  factory Course.rehydrate(List<CourseEvent> history) {
    final course = Course._();
    for (final e in history) {
      course.apply(e);
    }
    return course;
  }



  List<CourseEvent> addStudent(String studentId) {
    Student studentToAdd = Student(studentId);
    if (enrolledStudents.contains(studentToAdd)) {
      throw DomainError(
        "There should not be two students enrolled in the same Course",
      );
    }

    final event = StudentAddedToCourse(courseId: id, studentId: studentId);
    apply(event);
    return [event];
  }

  List<CourseEvent> removeStudent(String studentId) {
    Student studentToRemove = Student(studentId);
    if (!enrolledStudents.contains(studentToRemove)) {
      throw DomainError(
        "The student does not exist in this course, so it can't be deleted.",
      );
    }

    final event = StudentRemovedFromCourse(courseId: id, studentId: studentId);
    apply(event);
    return [event];
  }

  List<CourseEvent> gradeStudent(String studentId, CourseGrade grade) {
    Student studentToGrade = Student(studentId);
    if (!grade.isValid()) {
      throw DomainError("Keine valide Note.");
    }
    if (!enrolledStudents.contains(studentToGrade)) {
      throw DomainError(
        "The student does not exist in this course, so it can't be graded.",
      );
    }
    final event = StudentGraded(
      courseId: id,
      studentId: studentId,
      grade: grade.getOrCrash(),
    );
    apply(event);
    return [event];
  }

  List<CourseEvent> provideContent(String title, String description) {
    // TOOD: check the values of title and description is valid through value object?

    final event = ContentProvided(
      courseId: id,
      title: title,
      description: description,
    );
    apply(event);
    return [event];
  }

  List<CourseEvent> removeContent(String contentId) {
    final event = ContentRemoved(courseId: id, contentId: contentId);
    apply(event);
    return [event];
  }

  List<CourseEvent> addTask(String description) {
    final event = TaskAdded(courseId: id, description: description);
    apply(event);
    return [event];
  }

  List<CourseEvent> removeTask(String taskId) {
    final event = TaskRemoved(courseId: id, taskId: taskId);
    apply(event);
    return [event];
  }

  List<CourseEvent> endCourse() {
    final event = CourseEnded(courseId: id);
    apply(event);
    return [event];
  }

  @override
  void apply(CourseEvent event) {
    switch (event) {
      case StudentAddedToCourse e:
        enrolledStudents.add(
          Student(e.studentId),
        );
        break;
      case StudentRemovedFromCourse e:
        enrolledStudents.remove(
          Student(e.studentId),
        );
      case ContentProvided e:
        contentList.add(
          LearnContent(
            Uuid().v4(),
            LearnContentTitle(e.title),
            LearnContentDescription(e.description),
          ),
        );
      case ContentRemoved e:
        contentList.removeWhere((element) => element.id == e.contentId);
      case CourseEnded _:
        isActive = false;
      case StudentGraded e:
        enrolledStudents
            .firstWhere((student) => student.id == e.studentId)
            .apply(e);
      case TaskAdded e:
        taskList.add(
          CourseTask(
            Uuid().v4(),
            TaskDescription(e.description),
          ),
        );
      case TaskRemoved e:
        taskList.removeWhere((element) => element.id == e.taskId);
      default:
        break;
    }

    recordEvent(event);
  }
}
