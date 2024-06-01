import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorPage extends StatelessWidget {
  Color _parseColor(String colorString) {
    switch (colorString) {
      case 'red':
        return Colors.red;
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      default:
        return Colors.black;
    }
  }

  Row firstContainer() {
    return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello !",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                              ),
                              Text(
                                "Dr. Amol ",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 50),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.blue,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTZYHmzPOG6kpyTzARYBwFgOG9b8aMj8fbu9PZvGnH9kovZWcSO'),
                          )
                        ]);
  }

  var patientData = [
    {
      "color": "red",
      "timing": "10:00 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "green",
      "timing": "10:15 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "blue",
      "timing": "10:30 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "red",
      "timing": "10:45 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "green",
      "timing": "11:00 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "blue",
      "timing": "11:15 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "red",
      "timing": "11:30 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "green",
      "timing": "11:45 AM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "blue",
      "timing": "12:00 PM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    },
    {
      "color": "red",
      "timing": "12:15 PM",
      "patient_name": "Patient Name",
      "age": "X years",
      "icon": "Icons.timer, color: Colors.green"
    }
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                    color: Color(0xFF13235A),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 16,
                        ),
                        child: Center(
                          child: Text(
                            "SAPDOS",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(color: Colors.white, fontSize: 60),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width / 16,
                      ),
                      Center(
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.category_outlined,
                                        color: Colors.white, size: 30),
                                    SizedBox(width: 8),
                                    Text(
                                      'Categories',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 80,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Align content to the start (left)
                                  children: <Widget>[
                                    Icon(Icons.calendar_today,
                                        color: Colors.white, size: 30),
                                    SizedBox(width: 8),
                                    Text(
                                      'Appointment',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 80,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Align content to the start (left)
                                  children: <Widget>[
                                    Icon(Icons.forum,
                                        color: Colors.white, size: 30),
                                    SizedBox(width: 8),
                                    Text(
                                      'Chat',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 80,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.settings,
                                        color: Colors.white, size: 30),
                                    SizedBox(width: 8),
                                    Text(
                                      'Setting',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 80,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.logout,
                                        color: Colors.white, size: 30),
                                    SizedBox(width: 8),
                                    Text(
                                      'Logout',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30),
                  child: Expanded(
                      child: Column(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: firstContainer(),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today's Appointment ",
                              style: TextStyle(fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Boxes(),
                            ),
                            BlueLine(context),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                                color: Colors.red,
                                 height: MediaQuery.of(context).size.height * 0.40,
                                child:Text("hello")
                              ),
                            

                            // Container(
                            //   color: Colors.red,

                            //   height: MediaQuery.of(context).size.height * 0.40,
                            //   width:MediaQuery.of(context).size.width * 0.70,
                            //   margin: EdgeInsets.only(top: 20),

                            //     child: Container(

                            //           // ListView.builder(
                            //           //         itemCount: patientData.length,
                            //           //         itemBuilder: (context, index) {
                            //           //           return Text("hello",style:TextStyle(color:Colors.yellow));

                            //           //         }),

                            //   ),
                            // )
                          ],
                        ))
                  ])),
                ),
              ],
            )));
  }

  Container BlueLine(BuildContext context) {
    return Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: Color(0xFF13235A),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 100),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Wednesday, March 7",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.calendar_today,
                                      color: Colors.white, size: 20),
                                ),
                              ],
                            ),
                          );
  }

  Container Boxes() {
    return Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF7E91D4),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '19',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF13235A),
                                                        fontSize: 20)),
                                                TextSpan(
                                                    text: '/40',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15)),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "Pending Appoinments",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        color: Color(0xFF7E91D4),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: '21',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF13235A),
                                                          fontSize: 20)),
                                                  TextSpan(
                                                      text: '/40',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15)),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "Completed Appoinments",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
  }

 
}
