import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popys_pasajero_2024/injection.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_in/sign_in_bloc/sign_in_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/home/bloc/ClientHomeBloc.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<SignInBloc>(
      create: (context) =>
          SignInBloc(locator<AuthUseCases>())..add(SignInInitEvent())),
  BlocProvider<SignUpBloc>(
      create: (context) =>
          SignUpBloc(locator<AuthUseCases>())..add(SignUpInitEvent())),
  BlocProvider<ClientHomeBloc>(
      create: (context) => ClientHomeBloc(locator<AuthUseCases>())),
];
