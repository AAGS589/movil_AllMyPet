import 'package:flutter/material.dart';
import 'login-1.dart';
import 'registro.dart';
import 'login.dart';
import 'recuperar_contrasena.dart';
import 'nueva_contrasena.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const loginPage(),
      // home: Login(),
      // home: const Registro(),
      // home: Recuperar_contrasena(),
      // home: nuevaContrasena(),
    );
  }
}
