import 'dart:convert';

import 'package:apicrud/editStudent.dart';
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
    String url = "http://localhost:82/flutter_Php_Crud/fetch.php";
    var response = await http.get(Uri.parse(url));
    setState(() {
      studentData = jsonDecode(response.body);
    });
  }

  Future<void> deleteData(String id) async {
    String url = 'http://localhost:82/flutter_Php_Crud/delete.php';
    var reponse = await http.post(Uri.parse(url), body: {'id': id});
    var res = jsonDecode(reponse.body);
    if (res['success'] == "true") {
      print('record deleted');
      fetchData();
    }
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => editStudent(id: studentData[index]['std_id'],)),
                    );
                  },
                  leading: Text(studentData[index]['std_id']),
                  title: Text(studentData[index]['std_name']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Class: " + studentData[index]['std_class']),
                      Text("Section: " + studentData[index]['std_section']),
                      Text("Age: " + studentData[index]['std_age']),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      deleteData(studentData[index]['std_id']);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              )),
    );
  }
}
