import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_all_tax_types_event.dart';
part 'get_all_tax_types_state.dart';

class GetAllTaxTypesBloc extends Bloc<GetAllTaxTypesEvent, GetAllTaxTypesState> {
  GetAllTaxTypesBloc() : super(GetAllTaxTypesInitial()) {
    on<GetAllTaxTypesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
