import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grocery/Repository/ModelClass/signinmodelclass.dart';
import 'package:meta/meta.dart';

import '../Repository/API/signinapi.dart';


part 'signinbloc_event.dart';

part 'signinbloc_state.dart';

class Signinbloc extends Bloc<SigninblocEvent, SigninblocState> {
  late Signinmodelclass signinmodelclass;
  Signinapi signinapi = Signinapi();

  Signinbloc() : super(SigninblocInitial()) {
    on<Fetchsignin>((event, emit) async {
      emit(SigninblocStateLoading());
      try{

        signinmodelclass= await signinapi.signin(event.email,event.password);
        emit(SigninblocStateLoaded());
      } catch(e){
        print(e);
        emit(SigninblocStateError());}
    });
  }
}


