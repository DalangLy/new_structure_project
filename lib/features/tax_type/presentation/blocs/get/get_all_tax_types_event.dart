part of 'get_all_tax_types_bloc.dart';

abstract class GetAllTaxTypesEvent extends Equatable {
  const GetAllTaxTypesEvent();
}

class GetAllTaxTypes extends GetAllTaxTypesEvent {
  const GetAllTaxTypes();

  @override
  List<Object> get props => [];
}