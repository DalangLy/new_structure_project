import '../../../../../app_vendor/app_vendor_export.dart';

class CreateTaxTypeUseCase implements ICreateUseCase{
  final ICreateRepository _repository;

  CreateTaxTypeUseCase(this._repository);

  @override
  Future<ResponseEntity> call({required RequestEntity entity}) {
    return _repository.create(entity: entity);
  }
}