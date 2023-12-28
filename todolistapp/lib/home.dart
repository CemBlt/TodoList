import 'package:flutter/material.dart';
import 'package:todolistapp/add_new_task.dart';
import 'package:todolistapp/todocard.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeState();
}

class _homeState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> todo = ["Study lessons", "Go Gym", "Tidy Up The Room"];
    List<String> completed = ["Take out tash", "Wake up early"];
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF1F5F9),
          body: Column(
            children: [
              //Header
              Container(
                width: deviceWidth,
                height: deviceHeight / 3,
                //tüm ekranlarda kaçta kaçı alan kaplaması gerektiğini gösteren kod
                color: Color(0xff4F6F52),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(" 5 February 2000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text("To Do List",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              //Top Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: todo.length,
                      itemBuilder: (context, index) {
                        return todocard(title: todo[index]);
                      },
                    ),
                  ),
                ),
              ),
              //Completed Text
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Completed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              //Bottom Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: completed.length,
                      itemBuilder: (context, index) {
                        return todocard(title: completed[index]);
                      },
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => addNewTask(),
                  ));
                },
                child: Text("Add New Task"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
