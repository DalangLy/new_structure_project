import 'package:flutter/material.dart';

class AddTaxTypePage extends StatelessWidget {
  const AddTaxTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Add Tax Type'),
        ),
      ),
    );
  }
}
