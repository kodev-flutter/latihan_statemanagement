import 'package:flutter/material.dart';

class UserModels {
  int id;
  String first_name;
  String last_name;
  String avatar;
  String email;

  UserModels({required this.id, required this.email, required this.avatar, required this.last_name, required this.first_name});

  List dataUser = [
    {
      'id' : 10,
      'email': "byron.fields@reqres.in",
      'first_name': "Byron",
      'last_name' : "Fields",
      'avatar' : "https://reqres.in/img/faces/10-image.jpg"
    },
  ];
}
