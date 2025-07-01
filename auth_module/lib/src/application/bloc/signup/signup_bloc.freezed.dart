// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupEvent()';
}


}

/// @nodoc
class $SignupEventCopyWith<$Res>  {
$SignupEventCopyWith(SignupEvent _, $Res Function(SignupEvent) __);
}


/// @nodoc


class EmailChanged implements SignupEvent {
  const EmailChanged(this.emailString);
  

 final  String emailString;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailChangedCopyWith<EmailChanged> get copyWith => _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailChanged&&(identical(other.emailString, emailString) || other.emailString == emailString));
}


@override
int get hashCode => Object.hash(runtimeType,emailString);

@override
String toString() {
  return 'SignupEvent.emailChanged(emailString: $emailString)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) _then) = _$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String emailString
});




}
/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailString = null,}) {
  return _then(EmailChanged(
null == emailString ? _self.emailString : emailString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordChanged implements SignupEvent {
  const PasswordChanged(this.passwordString);
  

 final  String passwordString;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordChangedCopyWith<PasswordChanged> get copyWith => _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordChanged&&(identical(other.passwordString, passwordString) || other.passwordString == passwordString));
}


@override
int get hashCode => Object.hash(runtimeType,passwordString);

@override
String toString() {
  return 'SignupEvent.passwordChanged(passwordString: $passwordString)';
}


}

/// @nodoc
abstract mixin class $PasswordChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $PasswordChangedCopyWith(PasswordChanged value, $Res Function(PasswordChanged) _then) = _$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String passwordString
});




}
/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._self, this._then);

  final PasswordChanged _self;
  final $Res Function(PasswordChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? passwordString = null,}) {
  return _then(PasswordChanged(
null == passwordString ? _self.passwordString : passwordString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpSubmit implements SignupEvent {
  const SignUpSubmit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSubmit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupEvent.signUpSubmit()';
}


}




/// @nodoc
mixin _$SignupState {

 Email get email; Password get password; bool get showErrorMessage; bool get isSubmitting; Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStateCopyWith<SignupState> get copyWith => _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.showErrorMessage, showErrorMessage) || other.showErrorMessage == showErrorMessage)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.authFailureOrSuccessOption, authFailureOrSuccessOption) || other.authFailureOrSuccessOption == authFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,showErrorMessage,isSubmitting,authFailureOrSuccessOption);

@override
String toString() {
  return 'SignupState(email: $email, password: $password, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res>  {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) _then) = _$SignupStateCopyWithImpl;
@useResult
$Res call({
 Email email, Password password, bool showErrorMessage, bool isSubmitting, Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
});




}
/// @nodoc
class _$SignupStateCopyWithImpl<$Res>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? showErrorMessage = null,Object? isSubmitting = null,Object? authFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,showErrorMessage: null == showErrorMessage ? _self.showErrorMessage : showErrorMessage // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,authFailureOrSuccessOption: null == authFailureOrSuccessOption ? _self.authFailureOrSuccessOption : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}

}


/// @nodoc


class _SignupState implements SignupState {
  const _SignupState({required this.email, required this.password, required this.showErrorMessage, required this.isSubmitting, required this.authFailureOrSuccessOption});
  

@override final  Email email;
@override final  Password password;
@override final  bool showErrorMessage;
@override final  bool isSubmitting;
@override final  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupStateCopyWith<_SignupState> get copyWith => __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.showErrorMessage, showErrorMessage) || other.showErrorMessage == showErrorMessage)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.authFailureOrSuccessOption, authFailureOrSuccessOption) || other.authFailureOrSuccessOption == authFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,showErrorMessage,isSubmitting,authFailureOrSuccessOption);

@override
String toString() {
  return 'SignupState(email: $email, password: $password, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$SignupStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(_SignupState value, $Res Function(_SignupState) _then) = __$SignupStateCopyWithImpl;
@override @useResult
$Res call({
 Email email, Password password, bool showErrorMessage, bool isSubmitting, Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
});




}
/// @nodoc
class __$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(this._self, this._then);

  final _SignupState _self;
  final $Res Function(_SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? showErrorMessage = null,Object? isSubmitting = null,Object? authFailureOrSuccessOption = null,}) {
  return _then(_SignupState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,showErrorMessage: null == showErrorMessage ? _self.showErrorMessage : showErrorMessage // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,authFailureOrSuccessOption: null == authFailureOrSuccessOption ? _self.authFailureOrSuccessOption : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}


}

// dart format on
