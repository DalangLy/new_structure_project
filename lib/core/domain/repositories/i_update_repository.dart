import '../domain_export.dart';

abstract class IUpdateRepository{
  Future<ResponseEntity> update({required RequestEntity entity,});
}