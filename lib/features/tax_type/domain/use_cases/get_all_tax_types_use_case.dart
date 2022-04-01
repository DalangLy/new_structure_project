import '../../../../core/core_export.dart';

class GetAllTaxTypesUseCase implements IGetUseCase{
  final IGetRepository _repository;

  GetAllTaxTypesUseCase(this._repository);

  @override
  Future<List<ResponseEntity>> get() {
    return _repository.get();
  }
}