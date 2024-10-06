// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_in/sign_in_bloc/sign_in_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_in/sign_in_content.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // instanciar el bloc
  //SignInBloc? _signInBloc;

  @override
  Widget build(BuildContext context) {
    //inicializamos el bloc
    //_signInBloc = BlocProvider.of<SignInBloc>(context);
    return Scaffold(
      body: BlocListener<SignInBloc, SignInState>(
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
            //imprimir data
            print('Succsse Data: ${response.data}');
            // castear data
            final authResponse = response.data as AuthResponse;
            // disparar evento para guardar data session user
            context
                .read<SignInBloc>()
                .add(SaveUserSeasseonEvent(authResponse: authResponse));

            // redirigir a home y no guardar historial de pantallas
            Navigator.pushNamedAndRemoveUntil(
                context, 'client/home', (route) => false);
          }
        },
        child: BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
          // obtener respuesta
          final respnse = state.response;
          // validar y mostrar el loading
          if (respnse is Loading) {
            // mostar loading
            return Stack(
              children: [
                //
                SignInContent(state),
                //
                const Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            );
          }
          return SignInContent(state);
        }),
      ),
    );
  }
}
