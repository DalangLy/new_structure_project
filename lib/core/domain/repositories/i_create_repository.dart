import '../domain_export.dart';

abstract class ICreateRepository{
  Future<ResponseEntity> create({required RequestEntity entity,});
}