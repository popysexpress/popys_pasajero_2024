import 'package:flutter/material.dart';

class ClientHistoryTripScreen extends StatefulWidget {
  const ClientHistoryTripScreen({super.key});

  @override
  State<ClientHistoryTripScreen> createState() =>
      _ClientHistoryTripScreenState();
}

class _ClientHistoryTripScreenState extends State<ClientHistoryTripScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ClientHistoryTripScreen'),
      ),
    );
  }
}
