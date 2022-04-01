import 'package:flutter/material.dart';

class TaxTypeDetailsPage extends StatelessWidget {
  final String id;
  const TaxTypeDetailsPage({Key? key, required this.id,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Tax Type Details'),
        ),
      ),
    );
  }
}
