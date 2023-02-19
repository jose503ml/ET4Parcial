import 'package:flutter/material.dart';

class Registrarse extends StatefulWidget {
  const Registrarse({super.key});

  @override
  State<Registrarse> createState() => _RegistrarseState();
}

class _RegistrarseState extends State<Registrarse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(child: Text("PARCIAL I - ETPS3!", style: TextStyle(fontSize: 25))),
        SizedBox(height: 10),
        Container(width: 200, padding: EdgeInsets.all(8),
        child:
        Image.network("https://thumbs.dreamstime.com/b/compruebe-al-usuario-logo-icon-design-128469980.jpg", width: 20,)),
        SizedBox(height: 10),
        _campo("Igrese su nombre", Icons.person, false),
        _campo("Ingrese su apellido", Icons.person, false),
        _campo("Ingrese su usuario", Icons.person_pin_rounded, false),
        _campo("Ingrese su password", Icons.security, true)
      ],
    );
  }

   Widget _campo(var nm, var ic, var pw){
    return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black26
            ), 
            borderRadius: BorderRadius.circular(5)
          ),
          padding: EdgeInsets.symmetric(horizontal: 25),
          margin:  EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: TextFormField(
            obscureText: pw,
            style: TextStyle(fontSize: 16),
            decoration: InputDecoration(
              hintText: nm,
              labelText: nm,
              border: InputBorder.none,
              icon: Icon(ic, color: Color.fromARGB(255, 77, 74, 74),)
              
            ),
          ),
        );
   }
}