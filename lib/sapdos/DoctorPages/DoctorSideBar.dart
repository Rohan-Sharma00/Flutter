import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorSideBar extends StatelessWidget {

  var data=[
  {
    "icon": "category_outlined",
    "text": "Categories"
  },
  {
    "icon": "calendar_today",
    "text": "Appointment"
  },
  {
    "icon": "forum",
    "text": "Chat"
  },
  {
    "icon": "settings",
    "text": "Setting"
  },
  {
    "icon": "logout",
    "text": "Logout"
  }
];

final Map<String, IconData> iconDataMap = {
  'category_outlined': Icons.category_outlined,
  'calendar_today': Icons.calendar_today,
  'forum': Icons.forum,
  'settings': Icons.settings,
  'logout': Icons.logout,
};


  Widget build(BuildContext context)
  {
    return Container(
     width:MediaQuery.of(context).size.width *0.8,
      child: Center(
        child:
            ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return   Center(
                  child: Container(
                    margin:EdgeInsets.only(top:5,bottom:5),
                    child: InkWell(
                                            onTap: () {},
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(iconDataMap[data[index]['icon']],  
                                                    color: Colors.white, size: 30),
                                                SizedBox(width: 8),
                                                Text(
                                                  data[index]['text'] ?? "",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w100,
                                                  ),
                                                ),
                                              ],
                                            ),
                    ),
                  ),
                );
              }
              ),
        
      ),
    );
  }
}