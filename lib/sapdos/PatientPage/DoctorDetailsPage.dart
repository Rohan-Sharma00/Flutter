
import 'package:flutter/material.dart';
import 'package:flutter_testapp/sapdos/PatientPage/DoctorDataModel.dart';


class DoctorDetailsPage extends StatelessWidget {

  final Doctor doctor;

  DoctorDetailsPage(this.doctor);

  Widget build(BuildContext context)
  {
 
     return Scaffold(
      body:Column(
        children: [
          Text(doctor.description),
          SizedBox(height:10),
           Text(doctor.doctorName),
          SizedBox(height:10),
           Text(doctor.specialization),
          SizedBox(height:10),

        ],
      )
    );
  }
}