import 'package:flutter/material.dart';

class editStudent extends StatefulWidget {
  String id;
  editStudent({super.key,  required this.id});

  @override
  State<editStudent> createState() => _editStudentState();
}
TextEditingController stdName = TextEditingController();
TextEditingController stdAge = TextEditingController();
TextEditingController stdClass = TextEditingController();
TextEditingController stdSection = TextEditingController();
TextEditingController stdid = TextEditingController();
class _editStudentState extends State<editStudent> {
  @override
  void initState(){
    super.initState();
    stdid.text = widget.id;
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
           Container(
            // color: Colors.red,
            padding: EdgeInsets.all(15),
            // width: double.infinity,
            child: TextFormField(
              controller: stdid,
              decoration: InputDecoration(
                  label: Text('Enter Student ID'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  )),
            ),
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