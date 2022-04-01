import '../../../../core/core_export.dart';

class CreateTaxTypeUseCase implements ICreateUseCase{
  final ICreateRepository _repository;

  CreateTaxTypeUseCase(this._repository);

  @override
  Future<ResponseEntity> create({required RequestEntity entity}) {
    return _repository.create(entity: entity);
  }
}