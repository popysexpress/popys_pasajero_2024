import 'package:popys_pasajero_2024/src/data/dataSource/remote/services/auth_service.dart';
import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/models/user.dart';
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';

class AuthRepositoryImpl implements AuthRepository {
  // instanciar auth services
  AuthService authService;

  //constructor aplicando inyeccion de dependencias
  AuthRepositoryImpl(
    this.authService,
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
}
