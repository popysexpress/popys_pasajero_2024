import 'package:flutter/material.dart';

class ClientAboutScreen extends StatefulWidget {
  const ClientAboutScreen({super.key});

  @override
  State<ClientAboutScreen> createState() => _ClientAboutScreenState();
}

class _ClientAboutScreenState extends State<ClientAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ClientAboutScreen'),
      ),
    );
  }
}
