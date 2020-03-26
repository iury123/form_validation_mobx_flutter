import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formvalidation/registration_form/registration_widget.dart';

void main() => runApp(FormApp());

class FormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationFormWidget(),
    );
  }
}
