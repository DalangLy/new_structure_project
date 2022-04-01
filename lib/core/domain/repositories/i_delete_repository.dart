import '../domain_export.dart';

abstract class IDeleteRepository{
  Future<String> delete({required DeleteEntity entity,});
}