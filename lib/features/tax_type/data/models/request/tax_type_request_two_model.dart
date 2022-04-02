import '../../../domain/entities/request/tax_type_request_two.dart';

class TaxTypeRequestTwoModel extends TaxTypeRequestTwo {
  TaxTypeRequestTwoModel(
    String id,
    String code,
  ) : super(
          id,
          code,
        );

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'code': code,
    };
  }

  factory TaxTypeRequestTwoModel.fromEntity(TaxTypeRequestTwo entity){
    return TaxTypeRequestTwoModel(entity.id, entity.code);
  }
}
