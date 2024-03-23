part of 'signupbloc_bloc.dart';

@immutable
abstract class SignupblocState {}

class SignupblocInitial extends SignupblocState {}

class SignupblocStateLoading extends SignupblocState{}
class SignupblocStateLoaded extends SignupblocState{}
class SignupblocStateError extends SignupblocState{}

