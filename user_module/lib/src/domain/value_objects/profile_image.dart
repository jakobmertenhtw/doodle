import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class ProfileImage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileImage(String input) {
    return ProfileImage._(validateProfileImage(input));
  }

  const ProfileImage._(this.value);
}

Either<ValueFailure<String>, String> validateProfileImage(
  String input,
) {
  if (input.length > 5) {
    return right(input);
  } else {
    return left(ValueFailure("Das Profilbild ist nicht valide.", input));
  }
}
