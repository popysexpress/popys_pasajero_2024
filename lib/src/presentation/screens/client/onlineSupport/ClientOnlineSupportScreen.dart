import 'package:flutter/material.dart';

class ClientOnlineSupportScreen extends StatefulWidget {
  const ClientOnlineSupportScreen({super.key});

  @override
  State<ClientOnlineSupportScreen> createState() =>
      _ClientOnlineSupportScreenState();
}

class _ClientOnlineSupportScreenState extends State<ClientOnlineSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ClientOnlineSupportScreen'),
      ),
    );
  }
}
