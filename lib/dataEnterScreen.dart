import 'package:flutter/material.dart';
import 'package:untitled4/main.dart';
import 'package:untitled4/modalClass.dart';

class DataEntryScreen extends StatefulWidget {
  const DataEntryScreen({Key? key}) : super(key: key);

  @override
  State<DataEntryScreen> createState() => _DataEntryScreenState();
}

class _DataEntryScreenState extends State<DataEntryScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtstd = TextEditingController();
  TextEditingController txtid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Enter Data"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: txtName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter your Name"),
              ),
              SizedBox(
                height: 10,
              ),
              // TextField(
              //   controller: txtstd,
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(),
              //       hintText: "Enter your Standard"),
              // ),
              SizedBox(
                height: 10,
              ),
              // TextField(
              //   controller: txtid,
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(), hintText: "Enter your GRID"),
              // ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  DataModal d1 = DataModal(
                      id: txtid.text, name: txtName.text, std: txtstd.text);
                  setState(() {
                    Global.alldata.add(d1);
                  });
                  Navigator.popAndPushNamed(context, '/');
                },
                child: Container(
                  height: 60,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
