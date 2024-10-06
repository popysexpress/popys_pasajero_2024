import 'package:popys_pasajero_2024/src/data/dataSource/local/SharedPref.dart';
import 'package:popys_pasajero_2024/src/data/dataSource/remote/services/auth_service.dart';
import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/models/user.dart';
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';

class AuthRepositoryImpl implements AuthRepository {
  // inyeccion de dependencias
  AuthService authService;
  SharedPref sharedPref;

  //constructor aplicando inyeccion de dependencias
  AuthRepositoryImpl(
    this.authService,
    this.sharedPref,
  );

  //metodo login impelementacion
  @override
  Future<Resource<AuthResponse>> login(String email, String password) {
    //  implement login
    return authService.login(email, password);
  }

  //metodo register
  @override
  Future<Resource<AuthResponse>> register(User user) {
    // implementar register
    return authService.register(user);
  }

  // metodo para guardar datos de session
  @override
  Future<void> saveUserSession(AuthResponse authResponse) async {
    // implementar guardat datos en session
    sharedPref.save('user', authResponse.toJson());
  }

  // metodo para obtner data de user session
  @override
  Future<AuthResponse?> getUserSession() async {
    // implementar fuardar obtner datos en session

    // obtenemos la data
    final data = await sharedPref.read('user');

    // validamos la data
    if (data != null) {
      AuthResponse authResponse = AuthResponse.fromJson(data);
      return authResponse;
    }

    //
    return null;
  }

  // metodo logout
  @override
  Future<bool> logout() async {
    // llamamamos shared preferences
    return await sharedPref.remove('user');
  }
}
