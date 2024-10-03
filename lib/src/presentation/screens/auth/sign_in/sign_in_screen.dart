import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
        return SignInContent(state);
      }),
    );
  }
}
