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

  static const _baseColors = <ColorSwatch>[
    ColorSwatch(0xFF6AB7A8, {
      'highlight': Color(0xFF6AB7A8),
      'splash': Color(0xFF0ABC9B),
    }),
    ColorSwatch(0xFFFFD28E, {
      'highlight': Color(0xFFFFD28E),
      'splash': Color(0xFFFFA41C),
    }),
    ColorSwatch(0xFFFFB7DE, {
      'highlight': Color(0xFFFFB7DE),
      'splash': Color(0xFFF94CBF),
    }),
    ColorSwatch(0xFF8899A8, {
      'highlight': Color(0xFF8899A8),
      'splash': Color(0xFFA9CAE8),
    }),
    ColorSwatch(0xFFEAD37E, {
      'highlight': Color(0xFFEAD37E),
      'splash': Color(0xFFFFE070),
    }),
    ColorSwatch(0xFF81A56F, {
      'highlight': Color(0xFF81A56F),
      'splash': Color(0xFF7CC159),
    }),
    ColorSwatch(0xFFD7C0E2, {
      'highlight': Color(0xFFD7C0E2),
      'splash': Color(0xFFCA90E5),
    }),
    ColorSwatch(0xFFCE9A9A, {
      'highlight': Color(0xFFCE9A9A),
      'splash': Color(0xFFF94D56),
      'error': Color(0xFF912D2D),
    }),
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
