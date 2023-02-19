import 'package:flutter/material.dart';

class Incial extends StatefulWidget {
  const Incial({super.key});

  @override
  State<Incial> createState() => _IncialState();
}

class _IncialState extends State<Incial> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 200, child: 
        Image.asset("ejemplo.png", width: 20,)),
        SizedBox(height: 10),
        Text("Formulario"),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black26
            ), 
            borderRadius: BorderRadius.circular(5)
          ),
          padding: EdgeInsets.symmetric(horizontal: 25),
          margin:  EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            obscureText: true,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              hintText: "Nombre",
              labelText: "Nombre",
              border: InputBorder.none,
              icon: Icon(Icons.password, color: Colors.pink[200],)
              
            ),
          ),
        ), 
//Container(width: 200, child: Image.asset('')),
      ],
    );
  }
}