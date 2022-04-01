import 'package:new_rule/core/domain/entities/response_entity.dart';

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
