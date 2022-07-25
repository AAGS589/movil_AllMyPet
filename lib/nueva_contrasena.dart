import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class nuevaContrasena extends StatefulWidget {
  nuevaContrasena({Key? key}) : super(key: key);

  @override
  State<nuevaContrasena> createState() => _nuevaContrasenaState();
}

class _nuevaContrasenaState extends State<nuevaContrasena> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar contraseña"),
        backgroundColor: const Color.fromRGBO(79, 21, 129, 1),
      ),
      backgroundColor: Colors.white,
      body: Container(
          child: ListView(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 10, 10, 10),
          child: const Text(
            "Por su seguridad, tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un carácter especial.",
            style: TextStyle(
                color: Color.fromARGB(255, 105, 105, 105), fontSize: 17.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 25, 16, 5),
          child: const Text("Nueva contraserña",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 10),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: 'Nueva contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 25, 16, 5),
          child: const Text("Confirmar nueva contraseña",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 10),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: 'Confirma tu nueva contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 180, 16, 10),
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
              "Actualizar contraseña",
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
