import '../../../../../core/core_export.dart';
import 'i_tax_type_remote_data_source.dart';

class TaxTypeRemoteDataSource implements ITaxTypeRemoteDataSource{
  @override
  Future<ResponseEntity> create({required RequestEntity entity}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<String> delete({required DeleteEntity entity}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ResponseEntity>> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<ResponseEntity> getById({required String id}) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<ResponseEntity> update({required RequestEntity entity}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}