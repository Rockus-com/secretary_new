import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  final TextEditingController login = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("secretary"),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(label: Text("Логин")),
            controller: widget.login,
          ),
          TextField(
            decoration: const InputDecoration(label: Text("Пароль")),
            controller: widget.password,
          ),
          FloatingActionButton(
              onPressed: () {
                Login(widget.login.text, widget.password.text);
              },
              child: const Text("Войти"))
        ],
      )),
    );
  }
}

void Login(login, password) {
  
//   variable for connect socket
  // print(login);
  // print(password);
}
