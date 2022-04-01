import '../domain_export.dart';

abstract class ICreateUseCase{
  Future<ResponseEntity> call({required RequestEntity entity,});
}