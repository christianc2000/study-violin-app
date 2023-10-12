import 'package:flutter/material.dart';
import '../screen/practica_screen.dart';

class PosturaCorporalScreen extends StatefulWidget {
  @override
  _PosturaCorporalScreenState createState() => _PosturaCorporalScreenState();
}

class _PosturaCorporalScreenState extends State<PosturaCorporalScreen> {
  List<Item> _data = [
    Item(
      headerValue: 'Nivel 1',
      expandedValue: ['Práctica 1', 'Práctica 2', 'Práctica 3'],
    ),
    Item(
      headerValue: 'Nivel 2',
      expandedValue: ['Práctica 1', 'Práctica 2', 'Práctica 3'],
    ),
    Item(
      headerValue: 'Nivel 3',
      expandedValue: ['Práctica 1', 'Práctica 2', 'Práctica 3'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Postura Corporal'),
      ),
      body: ListView(
        children: _buildPanels(),
      ),
    );
  }

  List<Widget> _buildPanels() {
    return _data.map((item) {
      return ExpansionPanelList.radio(
        expandedHeaderPadding: EdgeInsets.zero,
        elevation: 1,
        children: [
          ExpansionPanelRadio(
            value: item,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: Column(
              children: item.expandedValue.map((buttonText) {
                return GestureDetector(
                  child: Card(
                    color: Color(0xFFFFC700),
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(buttonText),
                    ),
                  ),
                  onTap: () {
                    // Navegar a la pantalla PracticaScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PracticaScreen()),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      );
    }).toList();
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
  });

  List<String> expandedValue;
  String headerValue;
}


