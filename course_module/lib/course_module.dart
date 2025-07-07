// The Domain-Driven Design Course Module. This file exports the necessary files for the app and also other domains

export './src/model/entities/course.dart';
export './src/model/value_objects/course_description.dart';
export './src/model/value_objects/course_grade.dart';
export './src/model/value_objects/course_title.dart';
export './src/model/value_objects/learn_content_description.dart';
export './src/model/value_objects/learn_content_title.dart';
export './src/model/value_objects/taskDescription.dart';

export './src/model/entities/learn_content.dart';
export './src/model/entities/student.dart';
export './src/model/entities/task.dart';
export './src/model/entities/teacher.dart';

export './src/event/course_events.dart';

export './src/error/domain_errors.dart';
export './src/error/failures/course_failures.dart';

export './src/model/repositories/course_repository.dart';
