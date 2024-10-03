import 'package:flutter/material.dart';

//COLOR PRINCIPAL
const Color _custonColor = Color(0XFF0F2245);
//COLOR SECUNDARIO
const Color _secondColor = Color(0xFFED7625);

//LISTA DE COLORES
const List<Color> _colorTheme = [_custonColor, _secondColor];

class AppTheme {
  //recibir el color
  final int selectColor;

  //constructor
  AppTheme({
    this.selectColor = 0,
  }) : assert(
          selectColor <= 0 && selectColor < _colorTheme.length - 1,
          'Colors must between 0 and ${_colorTheme.length}',
        );

  //thema de la app
  ThemeData theme() {
    return ThemeData(
      //tema material 3
      useMaterial3: true,
      //color de la app
      colorSchemeSeed: _colorTheme[selectColor],
      //tema claro de la app
      brightness: Brightness.light,
    );
  }
}
