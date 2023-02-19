import 'package:flutter/material.dart';
import 'package:parcial1_etps3/pantallas/principal.dart'; //importar libreria

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false, //desactivar el banner de debug
      home: Principal(), //llamar a la clase principal o instanciar
    );
  }
}
