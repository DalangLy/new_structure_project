import '../../core_export.dart';

abstract class IUpdateDataSource{
  Future<ResponseEntity> update({required RequestEntity entity});
}