

import 'package:ddd_core_module/entity.dart';
import 'package:user_module/src/domain/value_objects/full_name.dart';
import 'package:user_module/src/domain/value_objects/profile_image.dart';

enum USERTYPE {
  student, 
  teacher
}


class User extends Entity {

  @override
  final String id;
  final FullName name;
  final ProfileImage profileImage;
  final USERTYPE type;

  User(this.id, this.name, this.profileImage, this.type);

}