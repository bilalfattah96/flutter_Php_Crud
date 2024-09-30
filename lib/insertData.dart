import 'package:flutter/material.dart';

class Insertdata extends StatefulWidget {
  const Insertdata({super.key});

  @override
  State<Insertdata> createState() => _InsertdataState();
}

TextEditingController stdName = TextEditingController();
TextEditingController stdAge = TextEditingController();
TextEditingController stdClass = TextEditingController();
TextEditingController stdSection = TextEditingController();

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
            padding: EdgeInsets.all(15),
            // height: 20,
            // color: Colors.amber.shade200,
            width: double.infinity,
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
            width: double.infinity,
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
            // height: 20,
            // color: Colors.amber.shade200,
            width: double.infinity,
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
            width: double.infinity,
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
              child: ElevatedButton(onPressed: () {}, child: Text('Submit')))
        ],
      ),
    );
  }
}
