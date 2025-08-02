

import 'package:auth_module/auth_module.dart';
import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/core/event_bus.dart';
import 'package:doodle/features/user/application/handlers/user_deleted_event_handler.dart';

void configureEventBus() {
  locator<EventBus>().register<UserDeleted>(locator<UserDeletedHandler>());
}