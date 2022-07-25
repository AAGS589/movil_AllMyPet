import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'nueva_contrasena.dart';

class Recuperar_contrasena extends StatefulWidget {
  Recuperar_contrasena({Key? key}) : super(key: key);

  @override
  State<Recuperar_contrasena> createState() => _Recuperar_contrasenaState();
}

class _Recuperar_contrasenaState extends State<Recuperar_contrasena> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar contraseña"),
        backgroundColor: const Color.fromRGBO(79, 21, 129, 1),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 10, 10),
              child: const Text(
                "Ingresa tu email para recuperar tu contraseña",
                style: TextStyle(
                    color: Color.fromARGB(255, 105, 105, 105), fontSize: 19.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 10, 10),
              child: const Text(
                "Correo eléctronico",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 5, 16, 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Dirección de correo',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.00))),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 10, 10),
              child: const Text(
                "Ingrese su correo elctrónico registrado y le enviaremos un correo elctrónico que contiene un enlace para restablecer su contraseña",
                style: TextStyle(
                    color: Color.fromARGB(255, 105, 105, 105), fontSize: 15.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 300, 16, 10),
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    minimumSize: const Size(350.0, 60.0),
                    primary: const Color.fromRGBO(117, 167, 86, 1)),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => nuevaContrasena())),
                },
                child: const Text(
                  "Enviar Solicitud",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
