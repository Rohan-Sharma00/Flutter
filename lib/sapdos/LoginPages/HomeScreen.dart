import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_testapp/sapdos/DoctorPages/DoctorPage.dart';
import 'package:flutter_testapp/sapdos/LoginPages/LoginPageBloc/LoginPageBloc.dart';
import 'package:flutter_testapp/sapdos/LoginPages/RegistrationPage.dart';
import 'package:flutter_testapp/sapdos/LoginPages/LoginPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Row(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 2,
          child: Image.asset(
            "assets/doctor.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
            ),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              Text(
                "SAPDOS",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              Text("Login to your sapdos account",
                  style: Theme.of(context).textTheme.displaySmall),
              Text("create one now",
                  style: Theme.of(context).textTheme.displaySmall),
              SizedBox(
                height: MediaQuery.of(context).size.height / 11,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                // height: 20,
                child: Column(
                  children: [
                    Center(
                        child: FractionallySizedBox(
                      widthFactor: 0.65,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFF13235A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BlocProvider(
                              create: (context) => LoginPageBloc(),
                              child: LoginPage(),
                            );
                          }));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 18,
                    ),
                    Center(
                        child: FractionallySizedBox(
                      widthFactor: 0.65,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegistrationPage();
                          }));
                        },
                        child: Text(
                          "SIGN-UP",
                          style: TextStyle(color: Color(0xFF13235A)),
                        ),
                      ),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 17,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DoctorPage();
                          }));
                        },
                        child: Text(
                          "Proceed as a Guest",
                          style: TextStyle(
                            color: Color(0xFF13235A),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]))
      ]),
    ));
  }
}
