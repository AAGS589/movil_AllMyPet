import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'login.dart';

import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

  // const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regístrate'),
        backgroundColor: Color.fromRGBO(79, 21, 129, 1),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: const Text(
                "Crea una cuenta para empezar a usar la app",
                style: TextStyle(
                    color: Color.fromARGB(255, 105, 105, 105),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: const Text(
                "Nombre",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Nombre completo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: const Text(
                "Correo eléctronico",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Dirección de coreo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const Text(
                "Contraseña",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Contraseña",
                      suffixIcon: const Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const Text(
                "La contraseña debe contener caracteres, numeros y simbolos con un minimo de 6 caracteres",
                style: TextStyle(
                    color: Color.fromARGB(255, 105, 105, 105), fontSize: 10.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(60, 10, 0, 0),
              child: const Text.rich(
                TextSpan(
                    text: "Al registrarme, acepto los",
                    children: <TextSpan>[
                      TextSpan(
                          text: " términos y condiciones",
                          style: TextStyle(
                              color: Color.fromRGBO(252, 21, 96, 1),
                              fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                                text: " y las",
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: " pólitica de privacidad",
                                      style: TextStyle(
                                        color: Color.fromRGBO(252, 21, 96, 1),
                                      ))
                                ]),
                          ]),
                    ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    minimumSize: const Size(350.0, 60.0),
                    primary: const Color.fromRGBO(117, 167, 86, 1)),
                onPressed: () {
                  // Respond to button press
                },
                child: const Text(
                  "Crear Cuenta",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login())),
                },
                child: const Text.rich(
                  TextSpan(
                      text: "¿Ya tienes una cuenta ?",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Iniciar Sesión",
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
