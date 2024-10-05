import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/models/user.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';

abstract class AuthRepository {
  //metodo de login
  Future<Resource<AuthResponse>> login(String email, String password);

  // metodo register
  Future<Resource<AuthResponse>> register(User user);
}
