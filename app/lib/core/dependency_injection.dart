import 'package:dio/dio.dart';
import 'package:doodle/core/event_bus.dart';
import 'package:doodle/features/course/command_model/application/command_handlers/add_student_handler.dart';
import 'package:doodle/features/course/command_model/application/command_handlers/create_course_handler.dart';
import 'package:doodle/features/course/command_model/application/command_handlers/remove_student_handler.dart';
import 'package:doodle/features/course/command_model/infrastructure/event_publisher/course_event_publisher.dart';
import 'package:doodle/features/course/command_model/infrastructure/event_stores/in_memory_course_event_store.dart';
import 'package:doodle/features/course/command_model/infrastructure/repositories/course_event_sourced_repository.dart';
import 'package:doodle/features/course/presentation/blocs/all_courses/all_courses_bloc.dart';
import 'package:doodle/features/course/presentation/blocs/create_course/create_course_bloc.dart';
import 'package:doodle/features/course/read_model/application/query_model/course_query_model.dart';
import 'package:doodle/features/course/read_model/infrastructure/datasource/course_read_remote_datasource.dart';
import 'package:doodle/features/course/read_model/infrastructure/projector/courses_projector.dart';
import 'package:doodle/features/course/read_model/infrastructure/query_model/mock_course_query_model.dart';
import 'package:doodle/features/user/application/blocs/current_user/current_user_bloc.dart';
import 'package:doodle/features/user/infrastructure/api/user_api.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  const String API_URL = 'http.example_api_123456.com/v1';


  locator.registerLazySingleton(() => Dio());

  // User Module
  locator.registerLazySingleton(() => UserApiImpl());
  locator.registerFactory(() => CurrentUserBloc());

  // Course Module
  locator.registerLazySingleton(() => CourseReadRemoteDatasource(locator<Dio>(), API_URL));
  locator.registerLazySingleton(() => ImplCourseReadModel(locator<CourseReadRemoteDatasource>()));
  locator.registerFactory(() => AllCoursesBloc(locator<ImplCourseReadModel>(), locator<UserApiImpl>()));

  // Course Command Model
  locator.registerLazySingleton(() => InMemoryCourseEventStore()); 
  locator.registerLazySingleton(() => CourseEventSourcedRepository(locator<InMemoryCourseEventStore>()));
  
  locator.registerLazySingleton(() => EventBus());
  locator.registerLazySingleton(() => CourseEventPublisherImpl(locator<EventBus>()));

  locator.registerLazySingleton(() => CreateCourseHandler(locator<CourseEventSourcedRepository>(), locator<CourseEventPublisherImpl>()));
  locator.registerLazySingleton(() => AddStudentHandler(locator<CourseEventSourcedRepository>(), locator<CourseEventPublisherImpl>()));
  locator.registerLazySingleton(() => RemoveStudentHandler(locator<CourseEventSourcedRepository>(), locator<CourseEventPublisherImpl>()));


  locator.registerFactory(() => CreateCourseBloc(locator<CreateCourseHandler>(), locator<UserApiImpl>()));

  locator.registerLazySingleton(() => CoursesProjector(locator<ImplCourseReadModel>(), locator<InMemoryCourseEventStore>()));

  // hier wird der CoursesProjector registriert
  final subscription = locator<CoursesProjector>().register();



}