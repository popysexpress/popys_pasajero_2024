import 'package:flutter/material.dart';

class ClientReferralsScreen extends StatefulWidget {
  const ClientReferralsScreen({super.key});

  @override
  State<ClientReferralsScreen> createState() => _ClienteReferralsScreenState();
}

class _ClienteReferralsScreenState extends State<ClientReferralsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ClientReferralsScreen'),
      ),
    );
  }
}
