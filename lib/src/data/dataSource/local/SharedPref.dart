import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  // metodo guardar
  Future<void> save(String key, dynamic value) async {
    // llamamos al medoto get instance
    final prefs = await SharedPreferences.getInstance();

    // guardamos la informacion
    prefs.setString(key, json.encode(value));
  }

  // metodo leer
  Future<dynamic> read(String key) async {
    // llamamos al medoto get instance
    final prefs = await SharedPreferences.getInstance();

    // leemos la informacion
    if (prefs.getString(key) != null) {
      //obtener datos
      return json.decode(prefs.getString(key)!);
    }
  }

  // metodo remove
  Future<dynamic> remove(String key) async {
    // llamamos al medoto get instance
    final prefs = await SharedPreferences.getInstance();

    // elimanamos datos
    return prefs.remove(key);
  }

  // metodo contains para comparar si hay datos en session
  Future<dynamic> contais(String key) async {
    // llamamos al medoto get instance
    final prefs = await SharedPreferences.getInstance();

    // elimanamos datos
    return prefs.containsKey(key);
  }
}
