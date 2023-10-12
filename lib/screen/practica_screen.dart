import 'package:flutter/material.dart';


class PracticaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Práctica'),
      ),
      body: Center(
        child: Text('Contenido de la pantalla de Práctica'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFC700), // Color amarillo #FFC700
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
               
              },
              child: Text('Practicar', style: TextStyle(fontSize: 16)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFD9D9D9), // Color gris #D9D9D9
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                // Agregar acción al tocar el botón Siguiente
              },
              child: Text('Siguiente', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
