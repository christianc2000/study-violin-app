import 'package:flutter/material.dart';
import 'postura_corporal_screen.dart'; // Importa la pantalla PosturaCorporalScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterEstudyViolin',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const InicioScreen(),
    );
  }
}

class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Estudy Violin'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Práctica'),
              Tab(text: 'Evaluación'),
              Tab(text: 'Afinador'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PracticeTab(), // Mostrar contenido de Práctica
            Center(
              child: Text('Contenido de Evaluación'),
            ),
            Center(
              child: Text('Contenido de Afinador'),
            ),
          ],
        ),
      ),
    );
  }
}

class PracticeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PracticeButton(
            title: 'Postura Corporal',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PosturaCorporalScreen(),
                ),
              );
            },
          ),
          PracticeButton(
            title: 'Agarre de Arco',
          ),
          PracticeButton(
            title: 'Agarre de Mango',
          ),
        ],
      ),
    );
  }
}

class PracticeButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final VoidCallback? onTap; // Callback para la acción al tocar el botón

  PracticeButton({required this.title, this.backgroundColor = const Color(0xFFFFC700), this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Establece la curvatura del borde
      ),
      color: backgroundColor, // Color de fondo del botón
      child: InkWell(
        onTap: onTap, // Utiliza la función onTap proporcionada
        child: Container(
          width: 280,
          height: 180,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white), // Estilo del texto
            ),
          ),
        ),
      ),
    );
  }
}
