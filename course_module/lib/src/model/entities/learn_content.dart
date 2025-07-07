

import 'package:course_module/src/model/value_objects/learn_content_description.dart';
import 'package:course_module/src/model/value_objects/learn_content_title.dart';
import 'package:ddd_core_module/entity.dart';

class LearnContent extends Entity {
  @override
  String id;
  LearnContentTitle title;
  LearnContentDescription description;
  LearnContent(this.id, this.title, this.description);
}