import 'package:meta/meta.dart';

class Unidad {
  final String nombre;
  final double conversion;

  const Unidad({@required this.nombre, @required this.conversion})
      : assert(nombre != null),
        assert(conversion != null);

  Unidad.fromJson(Map jsonMap)
      :assert(jsonMap['nombre'] != null),
        assert(jsonMap['conversion' != null]),
        nombre = jsonMap['nombre'],
        conversion = jsonMap['conversion'];
}
