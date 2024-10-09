import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Viewdata extends StatefulWidget {
  const Viewdata({super.key});

  @override
  State<Viewdata> createState() => _ViewdataState();
}

class _ViewdataState extends State<Viewdata> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  List studentData = [];

  Future<void> fetchData() async {
    String url = "http://localhost:82/Php%20Api/fetch.php";
    var response = await http.get(Uri.parse(url));
    setState(() {
      studentData = jsonDecode(response.body);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Students'),
      ),
      body: ListView.builder(
        itemCount: studentData.length,
          itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: Text(studentData[index]['std_name']),
                  title: Text(studentData[index]['std_class']),
                  subtitle: Text(studentData[index]['std_section']),
                  trailing: Text(studentData[index]['std_age']),
                ),
              )),
    );
  }
}
