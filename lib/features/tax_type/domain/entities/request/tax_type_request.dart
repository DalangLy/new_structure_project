import '../../../../../core/core_export.dart';

class TaxTypeRequest extends RequestEntity{
  final String code;
  final String description;

  TaxTypeRequest(this.code, this.description,);
}