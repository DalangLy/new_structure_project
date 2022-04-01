import '../domain_export.dart';

abstract class IGetUseCase{
  Future<List<ResponseEntity>> call();
}