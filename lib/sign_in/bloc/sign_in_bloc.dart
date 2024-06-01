import 'package:email_validator/email_validator.dart';
import 'package:flutter_testapp/sign_in/bloc/sign_in_event.dart';
import 'package:flutter_testapp/sign_in/bloc/sign_in_state.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class signInBloc extends Bloc<signInEvent,signInState>
{
signInBloc():super(signInInitialState()){

on<signInTextChangedEvent>((event,emit){
if (!EmailValidator.validate(event.email) )
{
  emit(signInErrorState(" enter proper Email address"));
}

else if(event.password.length<8 )
{
  emit(signInErrorState("Password cannot be empty and less than 8 characters"));
}

else{
  emit(signInValidState());
}

});

on<signInSubmittedEvent>((event,emit){

});
}
}