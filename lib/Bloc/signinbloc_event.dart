part of 'signinbloc_bloc.dart';

@immutable
abstract class SigninblocEvent {}
class Fetchsignin extends SigninblocEvent {

  final String email;
  final String password;


  Fetchsignin(
      {
        required this.email,
        required this.password,
        });
}
