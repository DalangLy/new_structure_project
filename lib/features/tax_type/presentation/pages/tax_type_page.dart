import 'package:flutter/material.dart';

class TaxTypePage extends StatelessWidget {
  const TaxTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Tax Type List'),
        ),
      ),
    );
  }
}
