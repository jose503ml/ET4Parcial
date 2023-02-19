import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(child: Text("PARCIAL I - ETPS3!", style: TextStyle(fontSize: 25))),
        SizedBox(height: 10),
        Container(width: 200, padding: EdgeInsets.all(8),
        child:
        Image.network("data:image/png;base64,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", width: 20,)),
        SizedBox(height: 10),
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