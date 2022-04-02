import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core_export.dart';
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
      child: DScaffold(
        breadCrumbs: const [
          DBreadCrumb(title: 'Tax Type', path: '/'),
          DBreadCrumb(title: 'Add Tax Type',)
        ],
        body: SafeArea(
          child: Center(
            child: BlocBuilder<GetAllTaxTypesBloc, GetAllTaxTypesState>(
              builder: (context, state) {
                if (state is GetAllTaxTypesSuccess) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.data.length.toString()),
                      const Divider(),
                      ElevatedButton(
                        onPressed: (){
                          AutoRouter.of(context).pushNamed('add');
                        },
                        child: const Text('Add Tax Type'),
                      ),
                    ],
                  );
                }
                else if (state is GetAllTaxTypesInProgress) {
                  return const CircularProgressIndicator();
                }
                return ElevatedButton(
                  onPressed: (){
                    AutoRouter.of(context).pushNamed('add');
                  },
                  child: const Text('Add Tax Type'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
