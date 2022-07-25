import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'recuperar_contrasena.dart';
import 'registro.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Image.asset('assets/title.png', fit: BoxFit.cover),
        title: const Text("Iniciar Sesión"),
        backgroundColor: const Color.fromRGBO(79, 21, 129, 1),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: const Text(
                "Inicia sesión con tu cuenta para continuar",
                style: TextStyle(
                  color: Color.fromRGBO(124, 124, 124, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 5),
              child: const Text(
                "Correo Electrónico",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
              child: const Text("Contraseña",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: const Icon(Icons.visibility),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  minimumSize: const Size(100.0, 10.0),
                  primary: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Recuperar_contrasena())),
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '¿Has olvidado tu contraseña?',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 72),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 116, 167, 87),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  minimumSize: const Size(350.0, 55.0),
                  primary: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {},
                child: const Text(
                  'Ingresar',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  minimumSize: const Size(350.0, 10.0),
                ),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Registro())),
                },
                child: const Text.rich(
                  TextSpan(
                      text: "¿Todavía no tienes una cuenta ?",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Regístrate",
                          style: TextStyle(
                              color: Color.fromRGBO(252, 21, 96, 1),
                              fontSize: 15),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
