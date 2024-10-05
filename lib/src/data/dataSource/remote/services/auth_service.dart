import 'dart:convert';

import 'package:popys_pasajero_2024/src/data/api/api_config.dart';
import 'package:http/http.dart' as http;
import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/models/user.dart';
import 'package:popys_pasajero_2024/src/domain/utils/ListToString.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';

class AuthService {
  // Metodo login
  Future<Resource<AuthResponse>> login(String email, String password) async {
    try {
      // url
      Uri url = Uri.http(ApiConfig.API_PROJECT, '/auth/login');
      // type Content
      Map<String, String> headers = {'Content-Type': 'application/json'};
      //Body
      String body = json.encode({'email': email, 'password': password});
      // enviar peticion
      final response = await http.post(url, headers: headers, body: body);
      // optener respuesta y desconificar
      final data = json.decode(response.body);
      //print('Data Remote: $data');
      // validacion de la respuesta
      if (response.statusCode == 200 || response.statusCode == 201) {
        // convertir a formato que pueda leer en dar
        AuthResponse authResponse = AuthResponse.fromJson(data);
        print('Data Remote: ${authResponse.toJson()}');
        print('Token: ${authResponse.token}');
        return Success(authResponse);
      } else {
        //print('*****MENSAJE ERROR: ${data['message']}');
        //mensaje de error
        return ErrorData(listToString(data['message']));
      }
    } catch (e) {
      print('Error: $e');
      return ErrorData(e.toString());
    }
  }

  // metodo register
  Future<Resource<AuthResponse>> register(User user) async {
    try {
      // url
      Uri url = Uri.http(ApiConfig.API_PROJECT, '/auth/register');
      // type Content
      Map<String, String> headers = {'Content-Type': 'application/json'};
      //Body
      String body = json.encode(user);
      // enviar peticion
      final response = await http.post(url, headers: headers, body: body);
      // optener respuesta y desconificar
      final data = json.decode(response.body);
      //print('Data Remote: $data');
      // validacion de la respuesta
      if (response.statusCode == 200 || response.statusCode == 201) {
        // convertir a formato que pueda leer en dar
        AuthResponse authResponse = AuthResponse.fromJson(data);
        print('Data Remote: ${authResponse.toJson()}');
        print('Token: ${authResponse.token}');
        return Success(authResponse);
      } else {
        //print('*****MENSAJE ERROR: ${data['message']}');
        //mensaje de error
        return ErrorData(listToString(data['message']));
      }
    } catch (e) {
      print('Error: $e');
      return ErrorData(e.toString());
    }
  }

/*
  Future<dynamic> login(String email, String password) async {
    // generamos un try catch
    try {
      // crear ruta
      Uri url = Uri.http(ApiConfig.API_PROJECT, '/auth/login');
      // mapear headers
      Map<String, String> headers = {"Content-Type": "aplication/json"};
      // crear el body
      String body = json.encode({'email': email, 'password': password});
      // crear peticion
      final response = await http.post(url, body: body, headers: headers);
      //descodificar informacion para leer en dart
      final data = json.decode(response.body);
      //retornar la data
      print('Data BODY $body');
      print('Data REMOTE $data');
      return data;
    } catch (e) {
      print('Error: $e');
    }
  }
*/
}
