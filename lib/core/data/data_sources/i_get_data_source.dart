import '../../core_export.dart';

abstract class IGetDataSource{
  Future<List<ResponseEntity>> get();
}