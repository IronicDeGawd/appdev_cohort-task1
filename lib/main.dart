import 'package:flutter/material.dart';
import 'package:appdev_task_1/login.dart';
import 'package:appdev_task_1/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'register',
    routes:{
      'login': (context)=>MyLogin(),
      'register': (context)=>MyRegister()
    },
  )
  );
}
