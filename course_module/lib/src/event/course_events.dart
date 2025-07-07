

sealed class CourseEvent {
  final String courseId;
  final DateTime timestamp;

  CourseEvent(this.courseId) : timestamp = DateTime.now();
}

class CourseCreated extends CourseEvent {
  final String teacherId;
  final String title;
  final String description;

  CourseCreated({
    required String courseId, 
    required this.teacherId, 
    required this.title, 
    required this.description
  }) : super(courseId);
}

class StudentAddedToCourse extends CourseEvent {
  final String studentId;

  StudentAddedToCourse({
    required String courseId, 
    required this.studentId
  }) : super(courseId);
}

class StudentRemovedFromCourse extends CourseEvent {
  final String studentId;

  StudentRemovedFromCourse({
    required String courseId,
    required this.studentId
  }) : super(courseId);
}


class ContentProvided extends CourseEvent {
  final String title;
  final String description;

  ContentProvided({
    required String courseId, 
    required this.title,
    required this.description
  }) : super(courseId);
}

class ContentRemoved extends CourseEvent {
  final String contentId;
  
  ContentRemoved({
    required String courseId, 
    required this.contentId
  }) : super(courseId);
}

class TaskAdded extends CourseEvent {
  final String description;

  TaskAdded({
    required String courseId, 
    required this.description
  }) : super(courseId);
}
class TaskRemoved extends CourseEvent {
  final String taskId;

  TaskRemoved({
    required String courseId, 
    required this.taskId
  }) : super(courseId);
}

class StudentGraded extends CourseEvent {
  final String studentId;
  final int grade;

  StudentGraded({
    required String courseId, 
    required this.studentId, 
    required this.grade
  }) : super(courseId); 
}

class CourseEnded extends CourseEvent {
  CourseEnded({
    required String courseId
  }) : super(courseId);
}


