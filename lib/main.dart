import 'package:flutter/material.dart';
import 'package:proyecto_udacity/categoria.dart';
import 'package:proyecto_udacity/categoria_ruta.dart';

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Unidades',
      home: CategoriaRuta()
    );
  }
}
