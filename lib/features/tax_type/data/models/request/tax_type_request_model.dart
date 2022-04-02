import '../../../tax_type_export.dart';

class TaxTypeRequestModel extends TaxTypeRequest {
  TaxTypeRequestModel(
    String code,
    String description,
  ) : super(
          code,
          description,
        );

  Map<String, dynamic> toJson(){
    return {
      'code': code,
      'description': description,
    };
  }

  factory TaxTypeRequestModel.fromEntity(TaxTypeRequest entity){
    return TaxTypeRequestModel(entity.code, entity.description);
  }
}
