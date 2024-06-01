import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter_testapp/facebook_loginpage/facebook.dart';
import 'package:flutter_testapp/product_list/products.dart';
import "package:flutter_testapp/sapdos/DoctorPages/DoctorPage.dart";
import "package:flutter_testapp/sapdos/LoginPages/LoginPageBloc/LoginPageBloc.dart";
import "package:flutter_testapp/sign_in/bloc/sign_in_bloc.dart";
import "package:flutter_testapp/tp/tp.dart";
import "package:flutter_testapp/tp/splash.dart";

import "package:flutter_testapp/shoppingCart/shoppingCart.dart";
import "package:flutter_testapp/customWidget/mainFile.dart";
import "package:flutter_testapp/sign_in/sign_in_screen.dart";
import "package:flutter_testapp/sapdos/LoginPages/HomeScreen.dart";





// void main() {
//   runApp(MaterialApp(
//     home: facebook(),
//   ));
// }



void main() {
  runApp(
    MaterialApp( 
      // home: BlocProvider(
      //   create: (context) => LoginPageBloc(),
      //   child:HomeScreen(),
      // ),
      home:HomeScreen(),

     debugShowCheckedModeBanner: false,
    theme: ThemeData(
  textTheme: TextTheme(
    displayLarge: TextStyle(color: Color(0xFF13235A), fontSize: 50,fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: Color(0xFF13235A), fontSize: 28),

    displaySmall: TextStyle(fontSize: 20, color: Color(0xFF13235A),),
  ),
),

    )
   );
}
