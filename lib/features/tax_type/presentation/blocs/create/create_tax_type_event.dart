part of 'create_tax_type_bloc.dart';

abstract class CreateTaxTypeEvent extends Equatable {
  const CreateTaxTypeEvent();
}

class CreateTaxType extends CreateTaxTypeEvent {
  final RequestEntity data;
  const CreateTaxType({required this.data,});

  @override
  List<Object> get props => [];
}