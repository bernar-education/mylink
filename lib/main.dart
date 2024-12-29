import 'package:first_project/pages/counter.dart';
import 'package:flutter/material.dart';

import 'package:first_project/pages/login.dart';


void main() {
  // runApp(const MyCounter());
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginPage()
    ),
  );
}
