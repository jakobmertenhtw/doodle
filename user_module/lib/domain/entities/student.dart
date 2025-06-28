import 'package:ddd_core_module/entity.dart';
import 'package:user_module/domain/value_objects/full_name.dart';
import 'package:user_module/domain/value_objects/profile_image.dart';

class Student extends Entity {
  @override
  final String id;
  final FullName name;
  final ProfileImage profileImage;

  Student(this.id, this.name, this.profileImage);

}