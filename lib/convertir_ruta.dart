import 'package:flutter/material.dart';
import 'package:proyecto_udacity/unidad.dart';

class ConvertirRuta extends StatefulWidget {
  final String nombre;
  final Color color;
  final List<Unidad> unidades;

  ConvertirRuta(
      {@required this.nombre, @required this.color, @required this.unidades})
      : assert(nombre != null),
        assert(color != null),
        assert(unidades != null);

  @override
  ConvertirRutaState createState() {
    return new ConvertirRutaState();
  }
}

class ConvertirRutaState extends State<ConvertirRuta> {
  @override
  Widget build(BuildContext context) {
    final unidadWidget = widget.unidades
        .map((Unidad unidad) => Container(
              color: widget.color,
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    unidad.nombre,
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Text(
                    'conversion: ${unidad.conversion}',
                    style: Theme.of(context).textTheme.subhead,
                  )
                ],
              ),
            ))
        .toList();
    return ListView(
      children: unidadWidget,
    );
  }
}
