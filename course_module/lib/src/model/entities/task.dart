

import 'package:course_module/src/model/value_objects/taskDescription.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class CourseTask extends Entity {
  @override
  String id;
  TaskDescription description;

  CourseTask(this.id, this.description);

}