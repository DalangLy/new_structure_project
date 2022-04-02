import '../../../../../app_vendor/app_vendor_export.dart';

class TaxType extends ResponseEntity {
  TaxType(
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
}
