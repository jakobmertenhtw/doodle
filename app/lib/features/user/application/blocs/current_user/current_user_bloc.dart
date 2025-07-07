import 'package:bloc/bloc.dart';
import 'package:doodle/features/user/application/api/user_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';
part 'current_user_bloc.freezed.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  CurrentUserBloc() : super(CurrentUserState.initial()) {
    on<LoadCurrentUser>((event, emit) {
      // TODO: implement with repositores and query models and everyting
      emit(CurrentUserState.currentUserExists(CurrentSignedInUser('932740232', CurrentSignedInUserType.teacher)));
    });
  }
}
