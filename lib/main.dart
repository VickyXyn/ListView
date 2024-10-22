import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Itens'),
        ),
        body: ItemList(),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List<Item> items = [
    Item(icon: Icons.star, title: 'Gato'),
    Item(icon: Icons.star, title: 'Cachorro'),
    Item(icon: Icons.star, title: 'Onça'),
    Item(icon: Icons.star, title: 'Lobo'),
    Item(icon: Icons.star, title: 'Baleia'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(items[index].icon),
          title: Text(items[index].title),
        );
      },
    );
  }
}

class Item {
  final IconData icon;
  final String title;

  Item({required this.icon, required this.title});
}