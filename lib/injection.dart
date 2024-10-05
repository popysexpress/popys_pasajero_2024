import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:popys_pasajero_2024/injection.config.dart';

//variables
final locator = GetIt.instance;

// metodo configuracion
@injectableInit
Future<void> configureDependencies() async => await locator.init();
