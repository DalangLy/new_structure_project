import '../../core_export.dart';

abstract class IGetByIdDataSource{
  Future<ResponseEntity> getById({required String id});
}