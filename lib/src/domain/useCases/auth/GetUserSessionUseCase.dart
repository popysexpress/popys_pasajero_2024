import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';

class GetUserSessionUseCase {
  //instanciar repository
  AuthRepository repository;

  //constructor aplicando inyeccion de dependencias
  GetUserSessionUseCase(this.repository);

  // ejecutar
  run() => repository.getUserSession();
}
