part of 'signupbloc_bloc.dart';

@immutable
abstract class SignupblocEvent {}

class Fetchsignup extends SignupblocEvent {
  final String username;
  final String email;
  final String password;
  final String phone;

  Fetchsignup(
      {required this.username,
      required this.email,
      required this.password,
      required this.phone});
}
