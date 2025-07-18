

import 'package:ddd_core_module/ddd_core_module.dart';
import 'package:user_module/user_module.dart';

enum UserRole {student, teacher}

class User extends AggregateRoot {
  @override
  final String id;
  FullName name;
  Email email;
  ProfileImage? profileImage;
  DoctoralDegree? doctoralDegree;
  final UserRole role;

  User._({
    required this.id, 
    required this.name, 
    this.profileImage, 
    required this.email, 
    required this.role, 
    this.doctoralDegree
  });

  factory User({
    required String id,
    required FullName name,
    required Email email,
    ProfileImage? profileImage,
    DoctoralDegree? doctoralDegree,
    required UserRole role,
  }) {
    if (role == UserRole.student) {
      return createStudent(
        id: id,
        name: name,
        email: email,
        profileImage: profileImage,
      );
    } else {
      return createTeacher(
        id: id,
        name: name,
        email: email,
        profileImage: profileImage,
        doctoralDegree: doctoralDegree,
      );
    }
  }

  static User createStudent({
    required String id,
    required FullName name,
    required Email email,
    ProfileImage? profileImage
  }) {
    return User._(
      id: id,
      name: name,
      profileImage: profileImage,
      email: email,
      role: UserRole.student,
    );
  }
  static User createTeacher({
    required String id,
    required FullName name,
    required Email email,
    ProfileImage? profileImage,
    DoctoralDegree? doctoralDegree,
  }) {
    return User._(
      id: id,
      name: name,
      email: email,
      profileImage: profileImage,
      role: UserRole.teacher,
      doctoralDegree: doctoralDegree,
    );
  }
  
  @override
  void apply(event) {
    // TODO: implement apply
  }

}