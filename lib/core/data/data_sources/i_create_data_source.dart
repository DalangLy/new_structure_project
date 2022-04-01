import '../../core_export.dart';

abstract class ICreateDataSource{
  Future<ResponseEntity> create({required RequestEntity entity,});
}