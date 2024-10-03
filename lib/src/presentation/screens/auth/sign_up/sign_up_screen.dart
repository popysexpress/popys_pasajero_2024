import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
        return SignUpContent(state);
      }),
    );
  }
}
