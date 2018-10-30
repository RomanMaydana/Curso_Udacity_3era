import 'package:flutter/material.dart';
import 'package:proyecto_udacity/categoria.dart';
import 'package:proyecto_udacity/unidad.dart';

final _backgroundColor = Colors.green[100];

class CategoriaRuta extends StatefulWidget {
  static const _categoryNames = <String>[
    'Longitud',
    'Área',
    'Volumen',
    'Masa',
    'Tiempo',
    'Almacenamiento',
    'Energía',
    'Moneda',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  CategoriaRutaState createState() {
    return new CategoriaRutaState();
  }
}

class CategoriaRutaState extends State<CategoriaRuta> {
  Widget _crearCategoriaWidgets(List<Widget> categorias) {
    return ListView.builder(
        itemCount: categorias.length,
        itemBuilder: (context, i) {
          return categorias[i];
        });
  }

  List<Unidad> _getListUnidades(String nombreCategoria) {
    return List.generate(10, (int i) {
      i = i + 1;
      return Unidad(
          nombre: '$nombreCategoria Unidad $i', conversion: i.toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    final categorias = <Categoria>[];

    for (int i = 0; i < CategoriaRuta._categoryNames.length; i++) {
      categorias.add(Categoria(
        nombre: CategoriaRuta._categoryNames[i],
        color: CategoriaRuta._baseColors[i],
        icon: Icons.cake,
        unidades: _getListUnidades(CategoriaRuta._categoryNames[i]),
      ));
    }
    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Conversor de Unidades',
        style: TextStyle(color: Colors.black, fontSize: 30.0),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _crearCategoriaWidgets(categorias),
    );
    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
