import 'package:flutter/material.dart';
import 'package:parcial1_etps3/pantallas/menu/configuraciones.dart';
import 'package:parcial1_etps3/pantallas/menu/login.dart';
import 'package:parcial1_etps3/pantallas/menu/registrarse.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int itemseleccionado = 0;
  void _navigateBottomBar1(int index) {
    setState(() {
      itemseleccionado = index;
    });
  }

  final List<Widget> _paginas = [Registrarse(), Login(), Configuraciones()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[itemseleccionado],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: itemseleccionado,
          onTap: _navigateBottomBar1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.adjust), label: 'Registrarse'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Login'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Configuraciones')
          ]),
    );
  }
}
