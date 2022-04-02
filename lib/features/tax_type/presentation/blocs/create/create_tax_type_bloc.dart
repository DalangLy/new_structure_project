import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../app_vendor/app_vendor_export.dart';

part 'create_tax_type_event.dart';
part 'create_tax_type_state.dart';

class CreateTaxTypeBloc extends Bloc<CreateTaxTypeEvent, CreateTaxTypeState> {
  final ICreateUseCase _useCase;
  CreateTaxTypeBloc(this._useCase) : super(CreateTaxTypeInitial()) {
    on<CreateTaxTypeEvent>((event, emit) async{
      if(event is CreateTaxType){
        emit(CreateTaxTypeInProgress());
        try{
          final ResponseEntity data = await _useCase(entity: event.data);
          emit(CreateTaxTypeSuccess());
        }
        on Failure catch(failure){
          emit(CreateTaxTypeFailed(message: failure.message));
        }
        catch(e){
          emit(CreateTaxTypeFailed(message: e.toString()));
        }
      }
    });
  }

  void create({required RequestEntity data,}){
    add(CreateTaxType(data: data));
  }
}
