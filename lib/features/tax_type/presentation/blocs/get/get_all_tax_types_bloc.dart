import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_rule/core/core_export.dart';

part 'get_all_tax_types_event.dart';
part 'get_all_tax_types_state.dart';

class GetAllTaxTypesBloc extends Bloc<GetAllTaxTypesEvent, GetAllTaxTypesState> {
  final IGetUseCase _useCase;
  GetAllTaxTypesBloc(this._useCase,) : super(GetAllTaxTypesInitial()) {
    on<GetAllTaxTypesEvent>((event, emit) async{
      if(event is GetAllTaxTypes){
        emit(GetAllTaxTypesInProgress());
        try{
          final List<ResponseEntity> data = await _useCase();
          emit(GetAllTaxTypesSuccess(data: data));
        }
        on Failure catch(failure){
          emit(GetAllTaxTypesFailed(message: failure.message));
        }
        catch(e){
          emit(GetAllTaxTypesFailed(message: e.toString()));
        }
      }
    });
  }

  void load(){
    add(GetAllTaxTypes());
  }
}
