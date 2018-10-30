import 'package:flutter/material.dart';
import 'package:proyecto_udacity/convertir_ruta.dart';
import 'package:proyecto_udacity/unidad.dart';

final _color = Colors.transparent;
final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Categoria extends StatelessWidget {
  final String nombre;
  final ColorSwatch color;
  final IconData icon;
  final List<Unidad> unidades;

  Categoria(
      {Key key,
      @required this.nombre,
      @required this.color,
      @required this.icon,
      @required this.unidades})
      : assert(nombre != null),
        assert(color != null),
        assert(icon != null),
        assert(unidades != null),
        super(key: key);

  _navegarAConversor(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text(
            nombre,
            style: Theme.of(context).textTheme.display1,
          ),
          backgroundColor: color,
          centerTitle: true,
        ),
        body: ConvertirRuta(nombre: nombre,color: color,unidades: unidades,),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        color: _color,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () => _navegarAConversor(context),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    icon,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    nombre,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
