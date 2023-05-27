// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:smart_water/src/models/request/regis_model_req.dart';
import 'package:smart_water/src/network/auth/auth_network.dart';

part 'regis_event.dart';
part 'regis_state.dart';

class RegisBloc extends Bloc<RegisEvent, RegisState> {
  final AuthNetwork dataSource;
  RegisBloc(
    this.dataSource,
  ) : super(RegisInitial()) {
    on<RegisSaveEvent>((event, emit) async {
      emit(RegisLoading());
      final result = await dataSource.register(event.request);
      print(result);
      emit(RegisLoaded());
    });
  }
}
