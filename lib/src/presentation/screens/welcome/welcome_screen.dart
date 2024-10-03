import 'package:flutter/material.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/welcome/welcome_content.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeContent(),
    );
  }
}
