import '../../../../../app_vendor/app_vendor_export.dart';

class GetAllTaxTypesUseCase implements IGetUseCase{
  final IGetRepository _repository;

  GetAllTaxTypesUseCase(this._repository);

  @override
  Future<List<ResponseEntity>> call() {
    return _repository.get();
  }
}