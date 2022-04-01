import 'dart:convert';
import 'package:dio/dio.dart';
import '../../../../../core/core_export.dart';
import '../../models/response/tax_type_model.dart';
import 'i_tax_type_remote_data_source.dart';

class TaxTypeRemoteDataSource implements ITaxTypeRemoteDataSource{
  final Dio _dio;

  TaxTypeRemoteDataSource(this._dio);

  @override
  Future<ResponseEntity> create({required RequestEntity entity}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<String> delete({required DeleteEntity entity}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ResponseEntity>> get() async{
    try{
      const String token = '';
      final Response<dynamic> response = await _dio.get(
        'https://96.9.67.188:4434/api/tax-types',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'TerminalTypeCode': 'CMA01',
          }
        ),
      );
      if(response.statusCode == 200){
        final dynamic data = jsonDecode(response.data as String);
        final List<dynamic> parsed = data['Data'];
        return parsed.map<ResponseEntity>((e) => TaxTypeModel.fromJson(json: e)).toList();
      }
      throw ServerFailure(message: 'Status : ${response.statusCode}, Message : ${response.data}');
    }on Failure{
      rethrow;
    }
    catch(e){
      throw ServerFailure(message: e.toString());
    }
  }

  @override
  Future<ResponseEntity> getById({required String id}) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<ResponseEntity> update({required RequestEntity entity}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}