import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_testapp/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter_testapp/sign_in/bloc/sign_in_event.dart';
import 'package:flutter_testapp/sign_in/bloc/sign_in_state.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Implementation"),
        backgroundColor: Colors.blue,
      ),
      body: 
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<signInBloc, signInState>(
                builder: (context, state) {
                  if (state is signInErrorState) {
                    return Text(
                      state.errorMessage,
                      style: const TextStyle(color: Colors.red),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  controller: emailController,
                  onChanged: (val) {
                    BlocProvider.of<signInBloc>(context).add(
                      signInTextChangedEvent(
                        emailController.text,
                        passwordController.text,
                      ),
                    );
                  },
                  decoration: InputDecoration(hintText: "Enter Email"),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: passwordController,
                  onChanged: (val) {
                    BlocProvider.of<signInBloc>(context).add(
                      signInTextChangedEvent(
                        emailController.text,
                        passwordController.text,
                      ),
                    );
                  },
                  decoration: InputDecoration(hintText: "Enter Password"),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                width: 100,
                child: BlocBuilder<signInBloc, signInState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<signInBloc>(context).add(
                          signInSubmittedEvent(
                           emailController.text,
                            passwordController.text,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: state is signInValidState
                            ? Colors.blue
                            : Colors.grey,
                      ),
                      child: Text("Submit"),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}

