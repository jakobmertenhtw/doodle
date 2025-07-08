

sealed class UserEvent {
  final String userId;
  final DateTime timestamp;

  UserEvent(this.userId) : timestamp = DateTime.now();
}

class TeacherCreated extends UserEvent {
  final String name;
  final String email;
  final String? profileImage;
  final String doctoralDegree;

  TeacherCreated({
    required String teacherId, 
    required this.name, 
    required this.email,
    this.profileImage, 
    required this.doctoralDegree
  }) : super(teacherId);
}

class StudentCreated extends UserEvent {
  final String name;
  final String email;
  final String? profileImage;

  StudentCreated({
    required String studentId, 
    required this.name, 
    required this.email,
    this.profileImage, 
  }) : super(studentId);

}