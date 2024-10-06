import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';

class SaveUserSessionUseCase {
  //instanciar repository
  AuthRepository repository;

  //constructor aplicando inyeccion de dependencias
  SaveUserSessionUseCase(this.repository);

  // ejecutar
  run(AuthResponse authResponse) => repository.saveUserSession(authResponse);
}
