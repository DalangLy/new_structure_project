import '../../../../../app_vendor/app_vendor_export.dart';
import '../../tax_type_export.dart';

class TaxTypeRepository implements ITaxTypeRepository{
  final ITaxTypeRemoteDataSource _remoteDataSource;

  TaxTypeRepository(this._remoteDataSource);

  @override
  Future<ResponseEntity> create({required RequestEntity entity}) {
    return _remoteDataSource.create(entity: entity);
  }

  @override
  Future<String> delete({required DeleteEntity entity}) {
    return _remoteDataSource.delete(entity: entity);
  }

  @override
  Future<List<ResponseEntity>> get() {
    return _remoteDataSource.get();
  }

  @override
  Future<ResponseEntity> getById({required String id}) {
    return _remoteDataSource.getById(id: id);
  }

  @override
  Future<ResponseEntity> update({required RequestEntity entity}) {
    return _remoteDataSource.update(entity: entity);
  }
}