import 'package:flutter/material.dart';

class addNewTask extends StatelessWidget {
  const addNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF1F5F9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xff4F6F52),
                width: deviceWidth,
                height: deviceHeight / 10,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "Add New Task",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Task Title"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 41),
                child: TextField(
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Category"),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(milliseconds: 299),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("assets/Category1.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(milliseconds: 299),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("assets/Category2.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(milliseconds: 299),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("assets/Category3.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Date"),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                  decoration: InputDecoration(
                                      filled: true, fillColor: Colors.white))),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Time"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Notes"),
              ),
              SizedBox(
                height: 301,
                child: TextField(
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                        filled: true, fillColor: Colors.white, isDense: true)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
