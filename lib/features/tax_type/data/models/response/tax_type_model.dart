import '../../../../../app_vendor/app_vendor_export.dart';
import '../../../../../config/config_export.dart';
import '../../../tax_type_export.dart';

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
