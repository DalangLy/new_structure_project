import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../tax_type_export.dart';

class TaxTypeWrapperPage extends StatelessWidget {
  const TaxTypeWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetAllTaxTypesBloc(GetAllTaxTypesUseCase(TaxTypeRepository(TaxTypeRemoteDataSource(Dio())))),
        ),
        BlocProvider(
          create: (context) => CreateTaxTypeBloc(CreateTaxTypeUseCase(TaxTypeRepository(TaxTypeRemoteDataSource(Dio())))),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
