import '../../../../../app_vendor/app_vendor_export.dart';

class GetTaxTypeByIdUseCase implements IGetByIdUseCase{
  final IGetByIdRepository _repository;

  GetTaxTypeByIdUseCase(this._repository);

  @override
  Future<ResponseEntity> call({required String id}) {
    return _repository.getById(id: id);
  }
}