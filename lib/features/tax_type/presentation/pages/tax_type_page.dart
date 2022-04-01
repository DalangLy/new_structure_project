import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../tax_type_export.dart';

class TaxTypePage extends StatefulWidget {
  const TaxTypePage({Key? key}) : super(key: key);

  @override
  State<TaxTypePage> createState() => _TaxTypePageState();
}

class _TaxTypePageState extends State<TaxTypePage> {

  @override
  void initState() {
    super.initState();

    BlocProvider.of<GetAllTaxTypesBloc>(context).load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetAllTaxTypesBloc, GetAllTaxTypesState>(
      listener: (context, state) {
        if(state is GetAllTaxTypesFailed){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: BlocBuilder<GetAllTaxTypesBloc, GetAllTaxTypesState>(
              builder: (context, state) {
                if (state is GetAllTaxTypesSuccess) {
                  return Text(state.data.length.toString());
                }
                else if (state is GetAllTaxTypesInProgress) {
                  return const CircularProgressIndicator();
                }
                return const Text('Tax Type List');
              },
            ),
          ),
        ),
      ),
    );
  }
}
