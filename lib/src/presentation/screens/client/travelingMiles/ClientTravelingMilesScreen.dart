import 'package:flutter/material.dart';

class ClientTravelingMilesScreen extends StatefulWidget {
  const ClientTravelingMilesScreen({super.key});

  @override
  State<ClientTravelingMilesScreen> createState() =>
      _ClientTravelingMilesScreenState();
}

class _ClientTravelingMilesScreenState
    extends State<ClientTravelingMilesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ClientTravelingMilesScreen'),
      ),
    );
  }
}
