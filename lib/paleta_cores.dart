import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaletaCores {
  static Map<int, Color> _amostraVerdeagua = {
    50: Color.fromRGBO(3, 152, 158, 0.05),
    100: Color.fromRGBO(3, 152, 158, 0.1),
    200: Color.fromRGBO(3, 152, 158, 0.2),
    300: Color.fromRGBO(3, 152, 158, 0.3),
    400: Color.fromRGBO(3, 152, 158, 0.4),
    500: Color.fromRGBO(3, 152, 158, 0.5),
    600: Color.fromRGBO(3, 152, 158, 0.6),
    700: Color.fromRGBO(3, 152, 158, 0.7),
    800: Color.fromRGBO(3, 152, 158, 0.8),
    900: Color.fromRGBO(3, 152, 158, 0.9),
  };

  MaterialColor verdeagua = MaterialColor(0xff03989e, _amostraVerdeagua);
}
