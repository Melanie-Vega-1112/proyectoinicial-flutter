import 'package:flutter/material.dart';

void main() {
  runApp(const MiAppBar());
}

class MiAppBar extends StatelessWidget {
  const MiAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'hola mi appbar',
            style: TextStyle(
              color: Colors.white, // Color del texto
              fontSize: 20, // Tamaño del texto
              fontWeight: FontWeight.bold, // Grosor del texto
            ),
          ),
          backgroundColor: Colors.blueGrey, // Color de fondo de la AppBar
          leading: IconButton(
            icon: const Icon(Icons.menu), // Ícono de menú
            onPressed: () {
              // Acción al presionar el ícono
              print('Menú presionado');
            },
            color: Colors.white, // Color del ícono
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search), // Ícono de búsqueda
              onPressed: () {
                // Acción al presionar el ícono
                print('Búsqueda presionada');
              },
              color: Colors.white, // Color del ícono
            ),
          ],
        ),
        body: const Center(
          child: Text('¡Hola, mundo!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  } // Fin del método build
} // Fin de la clase MiAppBar
