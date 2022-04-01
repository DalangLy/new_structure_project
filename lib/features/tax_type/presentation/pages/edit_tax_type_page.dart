import 'package:flutter/material.dart';

class EditTaxTypePage extends StatelessWidget {
  final String id;
  const EditTaxTypePage({Key? key, required this.id,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Edit Tax Type'),
        ),
      ),
    );
  }
}
