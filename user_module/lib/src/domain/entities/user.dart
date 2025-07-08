

import 'package:ddd_core_module/entity.dart';
import 'package:user_module/src/domain/value_objects/doctoral_degree.dart';
import 'package:user_module/src/domain/value_objects/email.dart';
import 'package:user_module/user_module.dart';

enum UserRole {student, teacher}

class User extends Entity {
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

}