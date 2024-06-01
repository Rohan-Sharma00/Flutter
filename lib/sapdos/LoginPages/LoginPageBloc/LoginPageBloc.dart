import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_testapp/sapdos/LoginPages/LoginPageBloc/LoginPageEvents.dart';
import 'package:flutter_testapp/sapdos/LoginPages/LoginPageBloc/LoginPageStates.dart';

class LoginPageBloc extends Bloc<LoginPageEvents,LoginPageStates>{

LoginPageBloc() : super(LoginPageInitialState()){

on<LoginPageEmailEvent>((event,emit){
  
  if(EmailValidator.validate(event.email))
  {
      emit(LoginPageEmailValidState("Email address is validated"));
  }
  else
  {
     
      emit(LoginPageEmailErrorState("Email address is not valid"));
  }
  });

  on<LoginPagePasswordEvent>((event,emit)
  {
  
  if(event.password.length>5)
  {
      emit(LoginPagePasswordValidState("Password is validated"));
  }
  else
  {
     
      emit(LoginPagePasswordErrorState("Password is not a valid password"));
  }
  });
}
}