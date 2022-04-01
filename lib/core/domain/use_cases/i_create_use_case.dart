import '../domain_export.dart';

abstract class ICreateUseCase{
  Future<ResponseEntity> create({required RequestEntity entity,});
}