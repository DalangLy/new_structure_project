import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_rule/features/tax_type/domain/domain_export.dart';
import 'package:new_rule/features/tax_type/presentation/blocs/create/create_tax_type_bloc.dart';

class AddTaxTypePage extends StatelessWidget {
  const AddTaxTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              final TaxTypeRequest data = TaxTypeRequest('code', 'description');
              BlocProvider.of<CreateTaxTypeBloc>(context).create(data: data);
            },
              child: const Text('Add Tax Type'),
          ),
        ),
      ),
    );
  }
}
