import 'package:flutter/material.dart';

class ClientSettingScreen extends StatefulWidget {
  const ClientSettingScreen({super.key});

  @override
  State<ClientSettingScreen> createState() => _ClientSettingScreenState();
}

class _ClientSettingScreenState extends State<ClientSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ClientSettingScreen'),
      ),
    );
  }
}
