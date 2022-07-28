import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {

  Future<dynamic> getData() async {

      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

      var response = await http.get(url);
    
      var listUser = jsonDecode(jsonEncode(response));
      return listUser;
   
  }

}