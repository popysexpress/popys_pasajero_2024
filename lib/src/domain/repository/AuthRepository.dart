import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/models/user.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';

abstract class AuthRepository {
  //metodo de login
  Future<Resource<AuthResponse>> login(String email, String password);

  // metodo register
  Future<Resource<AuthResponse>> register(User user);

  // metodo para guardar datos de session
  Future<void> saveUserSession(AuthResponse authResponse);

  // metodo para obtner datos de session
  Future<AuthResponse?> getUserSession();

  // metodo para cerrar session
  Future<bool> logout();
}
