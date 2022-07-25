import 'package:all_my_pet/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'login.dart';

import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  // const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22),
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Image.asset('assets/images/allmypet.png',
                width: 540.0, height: 240.0),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    minimumSize: const Size(350.0, 60.0),
                    primary: const Color.fromARGB(255, 10, 110, 224)),
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.plus_one, size: 30),
                label: const Text(
                  "Continuar con Google",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    minimumSize: const Size(350.0, 60.0),
                    primary: const Color.fromARGB(255, 40, 63, 174)),
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.facebook, size: 30),
                label: const Text(
                  "Continuar con Facebook",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 32),
                child: OutlinedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 105, 105, 105),
                          width: 2.0,
                        )),
                    minimumSize: const Size(350.0, 60.0),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: const Icon(Icons.email,
                      size: 30, color: Color.fromARGB(255, 105, 105, 105)),
                  label: const Text(
                    "Registrarse con e-mail",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 105, 105, 105),
                    ),
                  ),
                )),
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                child: const Text(
                  "Entrar como invitado",
                  style: TextStyle(
                      color: Color.fromRGBO(251, 0, 86, 10), fontSize: 15.0),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 10),
                child: const Text(
                  "Entrar como vendedor",
                  style: TextStyle(
                      color: Color.fromRGBO(95, 156, 52, 10), fontSize: 15.0),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
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
