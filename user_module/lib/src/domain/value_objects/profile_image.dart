import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class ProfileImage extends ValueObject<Option<String>> {
  @override
  final Either<ValueFailure<Option<String>>, Option<String>> value;

  factory ProfileImage(String input) {
    return ProfileImage._(validateProfileImage(input));
  }

  const ProfileImage._(this.value);
}

Either<ValueFailure<Option<String>>, Option<String>> validateProfileImage(
  String input,
) {
  // TODO: make validation of the profile image
  if (input == '') {
    return right(none());
  }
  if (input.length > 5) {
    return right(some(input));
  } else {
    return left(ValueFailure("Das Profilbild ist nicht valide.", some(input)));
  }
}
