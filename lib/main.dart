import 'package:flutter/material.dart';
import 'package:armspos/views/login.dart';
import 'package:armspos/views/home.dart';
import 'package:armspos/controllers/login_controller.dart';
import 'package:armspos/models/user_model.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARMS POS',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(
        controller: LoginController(LoginModel()),
      ),

      routes: {
        '/home': (context) => HomePage(),
      },
      initialRoute: '/',
    );
  }
}
