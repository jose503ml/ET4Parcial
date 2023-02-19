import 'package:flutter/material.dart';
import 'inicial.dart';


void main() {
  runApp(Principal());
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi aplicacion",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("data")),
          
      body: Incial(),
      
      ),
    );
  }
}