import 'package:flutter/material.dart';

class facebook extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Color.fromARGB(175, 204, 204, 204),
    body: Center(
      child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                  height: 100, child: Image.asset("assets/facebook.png")),
              Container(
                height: 320,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                          child: Container(
                        // padding: EdgeInsets.all(15),
                        child: Center(
                            child: const Text("Log in to Facebook",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ))),
                      )),
                      Center(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter address or phone number',
                            border: OutlineInputBorder()),
                      )),
                      Center(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder()),
                      )),
                      Container(
                        width: double.infinity,
                        height:45,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Set border radius here
                            ),
                            backgroundColor: Colors.blue,
                          ),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.blue),
                          ),
                        ),
                      ),
                      Center(
                        child: const Text("Forgotten account?   Sign up for Facebook",style: TextStyle(
                          color: Colors.blue
                        ),),
                      )
                    ]),
              )
            ],
          )),
    ),
  );
  }

  }


 