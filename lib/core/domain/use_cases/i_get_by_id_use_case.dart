import '../domain_export.dart';

abstract class IGetByIdUseCase{
  Future<ResponseEntity> call({required String id,});
}