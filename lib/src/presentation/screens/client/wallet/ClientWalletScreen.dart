import 'package:flutter/material.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';

class ClientWalletScreen extends StatefulWidget {
  const ClientWalletScreen({super.key});

  @override
  State<ClientWalletScreen> createState() => _ClientWalletScreenState();
}

class _ClientWalletScreenState extends State<ClientWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors().whiteF8,
      body: const Center(
        child: Text('ClientWalletScreen'),
      ),
    );
  }
}
