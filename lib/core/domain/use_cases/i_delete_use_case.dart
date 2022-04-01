import '../domain_export.dart';

abstract class IDeleteUseCase{
  Future<String> call({required DeleteEntity entity,});
}