import '../../core_export.dart';

abstract class IDeleteDataSource{
  Future<String> delete({required DeleteEntity entity,});
}