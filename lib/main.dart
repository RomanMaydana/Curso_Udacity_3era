import 'package:flutter/material.dart';
import 'package:proyecto_udacity/categoria_ruta.dart';

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Unidades',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.grey[600]
        ),
        primaryColor: Colors.grey[500],
        textSelectionColor: Colors.green[500],
      ),
      home: CategoriaRuta()
    );
  }
}
