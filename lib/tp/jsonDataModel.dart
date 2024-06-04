import 'package:flutter/foundation.dart';

class items{

String greeting,name,avatar;

items({
   required this.greeting,
  required this.name,
  required this.avatar
});

factory items.fromJson(Map<String,dynamic> json)
{

return items(
  greeting:json['greeting'],
    name:json['name'],
  avatar:json['avatar'],
);

}
}

