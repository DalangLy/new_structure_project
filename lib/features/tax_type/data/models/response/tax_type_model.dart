import 'package:new_rule/core/errors/all_failures/json_map_failure.dart';
import 'package:new_rule/features/tax_type/domain/entities/response/tax_type.dart';
import 'package:new_rule/config/constants/constant_export.dart';

class TaxTypeModel extends TaxType {
  TaxTypeModel(
    String id,
    DateTime createdDate,
    DateTime? modifiedDate,
    String createdUserId,
    String? modifiedUserId,
  ) : super(
          id,
          createdDate,
          modifiedDate,
          createdUserId,
          modifiedUserId,
        );

  factory TaxTypeModel.fromJson({required Map<String, dynamic> json}) {
    try {
      return TaxTypeModel(
        id(json: json),
        createdDate(json: json),
        modifiedDate(json: json),
        createdUserId(json: json),
        modifiedUserId(json: json),
      );
    } catch (e) {
      throw JsonMapFailure(
        message: mappingFailedMessage<TaxTypeModel>(),
      );
    }
  }
}
