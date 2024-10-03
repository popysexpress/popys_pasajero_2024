import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_in/sign_in_bloc/sign_in_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_up/bloc/sign_up_bloc.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<SignInBloc>(
      create: (context) => SignInBloc()..add(SignInInitEvent())),
  BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc()..add(SignUpInitEvent())),
];
