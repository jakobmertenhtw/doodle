import 'package:auth_module/auth_module.dart';
import 'package:dio/dio.dart';
import 'package:doodle/core/presentation/blocs/current_user_bloc.dart';
import 'package:doodle/features/auth/api/doodle_auth_api.dart';
import 'package:doodle/features/auth/application/services/auth_service.dart';
import 'package:doodle/features/auth/infrastructure/repositories/firebase_auth_repository.dart';
import 'package:doodle/features/auth/presentation/blocs/signout/signout_bloc.dart';
import 'package:doodle/features/auth/presentation/blocs/signin/signin_bloc.dart';
import 'package:doodle/features/auth/presentation/blocs/signup/signup_bloc.dart';
import 'package:doodle/features/course/command_model/application/command_handler/add_student_handler.dart';
import 'package:doodle/features/course/command_model/application/command_handler/create_course_handler.dart';
import 'package:doodle/features/course/command_model/application/command_handler/remove_student_handler.dart';
import 'package:doodle/features/course/command_model/infrastructure/event_stores/in_memory_course_event_store.dart';
import 'package:doodle/features/course/command_model/infrastructure/repositories/course_event_sourced_repository.dart';
import 'package:doodle/features/course/presentation/blocs/all_courses/all_courses_bloc.dart';
import 'package:doodle/features/course/presentation/blocs/create_course/create_course_bloc.dart';
import 'package:doodle/features/course/read_model/infrastructure/datasource/course_read_local_datasource.dart';
import 'package:doodle/features/course/read_model/infrastructure/datasource/course_read_remote_datasource.dart';
import 'package:doodle/features/course/read_model/infrastructure/projector/courses_projector.dart';
import 'package:doodle/features/course/read_model/infrastructure/query_model/course_query_model.dart';
import 'package:doodle/features/user/api/doodle_user_api.dart';
import 'package:doodle/features/user/application/blocs/create_user_bloc/create_user_bloc.dart';
import 'package:doodle/features/user/application/handlers/user_deleted_event_handler.dart';
import 'package:doodle/features/user/application/services/user_service.dart';
import 'package:doodle/features/user/infrastructure/repositories/user_repository.dart';
import 'package:event_bus/event_bus.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  const String apiUrl = 'http.example_api_123456.com/v1';
  EventBus eventBus = EventBus();

  locator.registerLazySingleton(() => Dio());

  // Auth Module
  locator.registerLazySingleton(() => FirebaseAuthRepository());
  locator.registerLazySingleton(
    () => AuthService(locator<FirebaseAuthRepository>(), eventBus),
  );
  locator.registerFactory(() => SigninBloc(locator<AuthService>()));
  locator.registerFactory(() => SignupBloc(locator<AuthService>()));
  locator.registerFactory(() => SignoutBloc(locator<AuthService>()));
  locator.registerFactory(() => DoodleAuth(locator<AuthService>()));

  // User Module
  locator.registerLazySingleton(() => UserRepositoryImpl());
  locator.registerLazySingleton(
    () => UserService(locator<UserRepositoryImpl>(), eventBus),
  );
  locator.registerLazySingleton(() => DoodleUser(locator<UserService>()));

  locator.registerFactory(
    () => CurrentUserBloc(locator<AuthService>(), locator<UserService>(), eventBus),
  );
  locator.registerFactory(
    () => CreateUserBloc(locator<UserService>(), locator<DoodleAuth>()),
  );

  // Course Module
  locator.registerLazySingleton(
    () => CourseReadRemoteDatasource(locator<Dio>(), apiUrl),
  );
  locator.registerLazySingleton(() => CourseReadLocalDatasource());
  locator.registerLazySingleton(
    () => ImplCourseQueryModel(locator<CourseReadRemoteDatasource>(), locator<CourseReadLocalDatasource>()),
  );
  locator.registerFactory(
    () => AllCoursesBloc(
      locator<ImplCourseQueryModel>(),
      locator<DoodleUser>(),
      locator<DoodleAuth>(),
    ),
  );

  // Course Command Model
  locator.registerLazySingleton(() => InMemoryCourseEventStore());
  locator.registerLazySingleton(
    () => CourseEventSourcedRepository(locator<InMemoryCourseEventStore>()),
  );

  locator.registerLazySingleton(
    () => CreateCourseHandler(
      locator<CourseEventSourcedRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => AddStudentHandler(
      locator<CourseEventSourcedRepository>(),
      eventBus
    ),
  );
  locator.registerLazySingleton(
    () => RemoveStudentHandler(
      locator<CourseEventSourcedRepository>(), 
      eventBus
    ),
  );

  locator.registerFactory(
    () => CreateCourseBloc(
      locator<CreateCourseHandler>(),
      locator<DoodleUser>(),
      locator<DoodleAuth>(),
    ),
  );

  locator.registerLazySingleton(
    () => CoursesProjector(
      locator<ImplCourseQueryModel>(),
      locator<InMemoryCourseEventStore>(),
      locator<DoodleAuth>(), 
      locator<DoodleUser>()
    ),
  );

  // hier wird der CoursesProjector registriert
  locator<CoursesProjector>().register();

  // Event Bus regsitration
  locator.registerSingleton(UserDeletedListener(locator<UserRepositoryImpl>(), eventBus));
}
