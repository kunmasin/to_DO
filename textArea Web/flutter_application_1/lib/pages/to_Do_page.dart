// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});
  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();
  String greetingMessage = "";
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type Your Name Here"),
              ),
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
