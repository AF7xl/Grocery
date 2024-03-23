part of 'signinbloc_bloc.dart';

@immutable
abstract class SigninblocState {}

class SigninblocInitial extends SigninblocState {}

class SigninblocStateLoading extends SigninblocState{}
class SigninblocStateLoaded extends SigninblocState{}
class SigninblocStateError extends SigninblocState{}
