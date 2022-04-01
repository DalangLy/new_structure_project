import '../domain_export.dart';

abstract class IDeleteUseCase{
  Future<String> delete({required DeleteEntity entity,});
}