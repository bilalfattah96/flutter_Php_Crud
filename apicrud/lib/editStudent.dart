import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class editStudent extends StatefulWidget {
  String id;
  editStudent({super.key, required this.id});

  @override
  State<editStudent> createState() => _editStudentState();
}

TextEditingController stdName = TextEditingController();
TextEditingController stdAge = TextEditingController();
TextEditingController stdClass = TextEditingController();
TextEditingController stdSection = TextEditingController();
// TextEditingController stdid = TextEditingController();

class _editStudentState extends State<editStudent> {
  @override
  void initState() {
    super.initState();
    // stdid.text = widget.id;
    getData();
  }

  Future<void> getData() async {
    String url = "http://localhost:82/flutter_Php_Crud/getData.php";
 var response =    await http.post(Uri.parse(url), body: {
      "id":widget.id
    });
    var studentData = jsonDecode(response.body);
    stdName.text = studentData[0]['std_name'];
    stdAge.text = studentData[0]['std_age'];
    stdClass.text = studentData[0]['std_class'];
    stdSection.text = studentData[0]['std_section'];
  }

  Future<void> updateData() async{

  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Edit Data'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Student Update/Edit Form',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          // Container(
          //   // color: Colors.red,
          //   padding: EdgeInsets.all(15),
          //   // width: double.infinity,
          //   child: TextFormField(
          //     controller: stdid,
          //     decoration: InputDecoration(
          //         label: Text('Enter Student ID'),
          //         border: OutlineInputBorder(
          //           borderSide: BorderSide(width: 2),
          //         )),
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Container(
            // color: Colors.red,
            padding: EdgeInsets.all(15),
            // width: double.infinity,
            child: TextFormField(
              controller: stdName,
              decoration: InputDecoration(
                  label: Text('Enter Student Name'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(15),
            // height: 20,
            // color: Colors.amber.shade200,
            // width: double.infinity,
            child: TextFormField(
              controller: stdAge,
              decoration: InputDecoration(
                  label: Text('Enter Student Age'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: TextFormField(
              controller: stdClass,
              decoration: InputDecoration(
                  label: Text('Enter Student Class'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(15),
            // height: 20,
            // color: Colors.amber.shade200,
            // width: double.infinity,
            child: TextFormField(
              controller: stdSection,
              decoration: InputDecoration(
                  label: Text('Enter Student Section'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                updateData();
                stdName.clear();
                stdAge.clear();
                stdClass.clear();
                stdSection.clear();
              },
              child: Text('Update'),
            ),
          ),
        ],
      ),
    );
  }
}
