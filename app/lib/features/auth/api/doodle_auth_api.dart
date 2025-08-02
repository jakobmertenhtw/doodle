import 'package:doodle/features/auth/application/services/auth_service.dart';
import 'package:doodle/features/auth/presentation/blocs/signout/signout_bloc.dart';

enum DoodleAuthStatus { authenticated, unauthenticated }
class DoodleAuth {
  final AuthService _authService;
  DoodleAuth(this._authService);
  Future<String> getCurrentSignedInUserIdOrCrash() async {
    final result = await _authService.getSignedInUser();
    return result.fold(
      () => throw StateError('getCurrentSignedInUserIdOrCrash() wurde aufgerufen, aber kein Nutzer ist angemeldet.'),
      (credentials) => credentials.id
    );
  }
  Future<String> getCurrentSignedInUserEmailOrCrash() async {
    final result = await _authService.getSignedInUser();
    return result.fold(
      () => throw StateError('getCurrentSignedInUserIdOrCrash() wurde aufgerufen, aber kein Nutzer ist angemeldet.'),
      (credentials) => credentials.emailAdress.getOrCrash()
    ); 
  }
}
