import 'package:popys_pasajero_2024/src/data/repository/AuthRepositoryImpl.dart';
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';

class SignInUseCase {
  //instanciar repository
  AuthRepository repository;

  //constructor aplicando inyeccion de dependencias
  SignInUseCase(this.repository);

  // ejecutar
  run(String email, String password) => repository.login(email, password);
}
