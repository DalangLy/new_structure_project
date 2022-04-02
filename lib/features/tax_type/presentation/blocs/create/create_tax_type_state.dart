part of 'create_tax_type_bloc.dart';

abstract class CreateTaxTypeState extends Equatable {
  const CreateTaxTypeState();
}

class CreateTaxTypeInitial extends CreateTaxTypeState {
  @override
  List<Object> get props => [];
}

class CreateTaxTypeInProgress extends CreateTaxTypeState {
  @override
  List<Object> get props => [];
}

class CreateTaxTypeSuccess extends CreateTaxTypeState {
  @override
  List<Object> get props => [];
}

class CreateTaxTypeFailed extends CreateTaxTypeState {
  final String message;
  const CreateTaxTypeFailed({required this.message,});
  @override
  List<Object> get props => [];
}
