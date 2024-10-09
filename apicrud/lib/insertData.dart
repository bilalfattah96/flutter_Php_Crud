import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Insertdata extends StatefulWidget {
  const Insertdata({super.key});

  @override
  State<Insertdata> createState() => _InsertdataState();
}

TextEditingController stdName = TextEditingController();
TextEditingController stdAge = TextEditingController();
TextEditingController stdClass = TextEditingController();
TextEditingController stdSection = TextEditingController();

Future<void> insertData() async {
  String url = "http://localhost:82/Php%20Api/insertStd.php";
  var response = await http.post(Uri.parse(url), body: {
    "name": stdName.text,
    "age": stdAge.text,
    "class": stdClass.text,
    "section": stdSection.text,
  });
  jsonDecode(response.body);
}

class _InsertdataState extends State<Insertdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Insert Data'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Student Registration Form',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
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
                insertData();
                stdName.clear();
                stdAge.clear();
                stdClass.clear();
                stdSection.clear();
              },
              child: Text('Submit'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/viewstudent');
              },
              child: Text('View Students'),
            ),
          )
        ],
      ),
    );
  }
}
