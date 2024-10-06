// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_up/sign_up_content.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          //obtener la respuesta
          final response = state.response;
          //validamos si exite error
          if (response is ErrorData) {
            // imprimir mensaje en la app
            Fluttertoast.showToast(
              msg: response.message,
              toastLength: Toast.LENGTH_SHORT,
            );
            // imprimir eeror
            print('Errot data: ${response.message}');
          } else if (response is Success) {
            // limpiar formulario
            context.read<SignUpBloc>().add(FormResetEvent());

            //imprimir data
            print('Succsse Data: ${response.data}');

            // castear data
            final authResponse = response.data as AuthResponse;

            // disparar evento para guardar data session user
            context
                .read<SignUpBloc>()
                .add(SaveUserSeasseonEvent(authResponse: authResponse));

            // redirigir a home y no guardar historial de pantallas
            Navigator.pushNamedAndRemoveUntil(
                context, 'client/home', (route) => false);
          }
        },
        child: BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
          return SignUpContent(state);
        }),
      ),
    );
  }
}
