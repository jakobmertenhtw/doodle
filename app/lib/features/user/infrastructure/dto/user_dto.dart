import 'package:flutter/foundation.dart';
import 'package:user_module/user_module.dart';

@immutable
class UserDto {
  final String id;
  final String fullName;
  final String email;
  final String? profileImage;
  final String? doctoralDegree;
  final String role;

  const UserDto({
    required this.id,
    required this.fullName,
    required this.email,
    this.profileImage,
    this.doctoralDegree,
    required this.role,
  });

  factory UserDto.fromFirestore(String id, Map<String, dynamic> data) {
    return UserDto(
      id: id,
      fullName: data['fullName'] as String,
      email: data['email'] as String,
      role: data['role'] as String,
      profileImage: data['profileImage'] as String?,
      doctoralDegree: data['doctoralDegree'] as String?,
    );
  }

  Map<String, dynamic> toFirestore() {
    final data = {
      'fullName': fullName,
      'email': email,
      'role': role,
    };
    if (profileImage != null) {
      data['profileImage'] = profileImage!;
    }
    if (doctoralDegree != null) {
      data['doctoralDegree'] = doctoralDegree!;
    }
    return data;
  }

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      fullName: user.name.getOrCrash(),
      email: user.email.getOrCrash(),
      role: user.role.name,
      profileImage: user.profileImage?.getOrCrash(),
      doctoralDegree: user.doctoralDegree?.getOrCrash(),
    );
  }

  User toDomain() {
    FullName nameValueObject = FullName(fullName);
    Email emailValueObject = Email(email);
    ProfileImage? profileImageValueObject;
    DoctoralDegree? doctoralDegreeValueObject;

    if (!nameValueObject.isValid() || !emailValueObject.isValid()) {
      throw StateError('Email or Name values are not in a valid domain state');
    }
    if (profileImage != null) {
      profileImageValueObject = ProfileImage(profileImage!);
      if (!profileImageValueObject.isValid()) {
        throw StateError('Profile Image value is not in a valid domain state');
      }
    }
    if (doctoralDegree != null) {
      doctoralDegreeValueObject = DoctoralDegree(doctoralDegree!);
      if (!doctoralDegreeValueObject.isValid()) {
        throw StateError(
          'Doctoral Degree value is not in a valid domain state',
        );
      }
    }
    if (role != 'student' && role != 'teacher') {
      throw StateError('role is not student or teacher');
    }
    UserRole roleValueObject = role == 'student'
        ? UserRole.student
        : UserRole.teacher;

    return User(
      id: id,
      name: nameValueObject,
      email: emailValueObject,
      role: roleValueObject,
      profileImage: profileImageValueObject,
      doctoralDegree: doctoralDegreeValueObject,
    );
  }
}
