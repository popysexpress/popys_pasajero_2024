import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';

class LogoutUseCase {
  //instanciar repository
  AuthRepository repository;

  //constructor aplicando inyeccion de dependencias
  LogoutUseCase(this.repository);

  // ejecutar
  run() => repository.logout();
}
