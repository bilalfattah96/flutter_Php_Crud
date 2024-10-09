import 'package:apicrud/insertData.dart';
import 'package:apicrud/viewData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    routes: {
      "/viewstudent":(context) => Viewdata(),
    },
    debugShowCheckedModeBanner: false,
    home: Insertdata(),
  ));
}
