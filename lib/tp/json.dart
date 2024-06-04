import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_testapp/tp/jsonDataModel.dart';

class jsonDisplay extends StatelessWidget {
  Future<items> _loadJsonData() async {
    var json = await rootBundle.loadString('json/doctors_list.json');
    var decodedData = jsonDecode(json);
    print(decodedData.toString());
    return items.fromJson(decodedData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<items>(
        future: _loadJsonData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading JSON data'));
          } else {
            // print("### = ${snapshot.data.user!.greeting}");
            if (snapshot.hasData && snapshot.data != null) {
              String userGreeting = snapshot.data!.name;
              return Text(userGreeting.isNotEmpty ? userGreeting : "empty");
            } else {
              return Center(child: Text('No data available'));
            }
          }
        },
      ),
    );
  }
}
