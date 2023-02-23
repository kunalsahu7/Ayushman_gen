import 'package:flutter/material.dart';
import 'package:untitled4/modalClass.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtna = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // DataModal d1 = ModalRoute.of(context)!.settings.arguments as DataModal;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Student Info",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(12),
            child: ListView.builder(
              itemCount: Global.alldata.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.black12,
                  child: Row(
                    children: [
                      Text("${Global.alldata[index].name}"),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Column(
                                    children: [
                                      TextField(
                                        controller: txtna,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder()),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              Global.alldata[index].name =
                                                  txtna.text;
                                            });
                                            Navigator.pop(context);
                                          },
                                          child: Text("submit"))
                                    ],
                                  ),
                                ),
                              );
                            });
                          },
                          icon: Icon(Icons.edit))
                    ],
                  ),
                );
              },
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'entry');
          },
          backgroundColor: Colors.red,
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
    );
  }
}
