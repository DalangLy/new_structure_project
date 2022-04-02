import '../../../../../app_vendor/app_vendor_export.dart';

class TaxTypeRequest extends RequestEntity{
  final String code;
  final String description;

  TaxTypeRequest(this.code, this.description,);
}