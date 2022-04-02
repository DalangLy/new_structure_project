import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../tax_type_export.dart';

class AddTaxTypePage extends StatelessWidget {
  const AddTaxTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              //final TaxTypeRequest data = TaxTypeRequest('code', 'description');
              final TaxTypeRequestTwo dataTwo = TaxTypeRequestTwo('id', 'code');
              BlocProvider.of<CreateTaxTypeBloc>(context).create(data: dataTwo);
            },
              child: const Text('Add Tax Type'),
          ),
        ),
      ),
    );
  }
}
