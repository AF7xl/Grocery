import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/API/signupapi.dart';
import '../Repository/ModelClass/signupmodelclass.dart';

part 'signupbloc_event.dart';

part 'signupbloc_state.dart';

class SignupblocBloc extends Bloc<SignupblocEvent, SignupblocState> {
  late Signupmodelclass signupmodelclass;
  Signupapi signupapi = Signupapi();

  SignupblocBloc() : super(SignupblocInitial()) {
    on<Fetchsignup>((event, emit) async {
      emit(SignupblocStateLoading());
      try{

        signupmodelclass= await signupapi.signup(event.username,event.email,event.password,event.phone);
        emit(SignupblocStateLoaded());
      } catch(e){
        print(e);
        emit(SignupblocStateError());}
    });
  }
}

