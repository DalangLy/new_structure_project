import '../../../../../app_vendor/app_vendor_export.dart';

class UpdateTaxTypeUseCase implements IUpdateUseCase{
  final IUpdateRepository _repository;

  UpdateTaxTypeUseCase(this._repository);

  @override
  Future<ResponseEntity> call({required RequestEntity entity}) {
    return _repository.update(entity: entity);
  }
}