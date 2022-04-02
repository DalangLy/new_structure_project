import '../../../../../app_vendor/app_vendor_export.dart';

class DeleteTaxTypeUseCase implements IDeleteUseCase{
  final IDeleteRepository _repository;

  DeleteTaxTypeUseCase(this._repository);

  @override
  Future<String> call({required DeleteEntity entity}) {
    return _repository.delete(entity: entity);
  }
}