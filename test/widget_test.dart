// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:latihan_statemanagement/main.dart';

void main() {

  
  Future getData() async {
    try {
      var response = await Dio().get('https://reqres.in/api/users?page=2');
      print(response);
      var data = response;
      return data;
    } catch (e) {
      print(e);
    }
  }
}
