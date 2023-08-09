import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../api/api_helper.dart';
import '../models/deptlist_model.dart';
import '../service/api_service.dart';

part 'timetable_admin_state.dart';

class TimetableAdminCubit extends Cubit<TimetableAdminState> {
  API_Service _api_service = API_Service();
  TimetableAdminCubit() : super(TimetableAdminState());

  void deptInitial() async {
    emit(state.copyWith(status: "loading"));
    try {
      List<DeptListModel> rolelist = await _api_service.deptList();
      emit(state.copyWith(status: "loaded"));
      // print(rolelist);
      // _api_service.deptList();
    } catch (e) {
      print("Cubit $e");
      emit(state.copyWith(status: "error"));
    }
  }
  void deptBatchList() async {
    emit(state.copyWith(status: "loading"));
    try {
      List rolelist = await _api_service.deptBatchList();
      emit(state.copyWith(status: "loaded"));
      // print(rolelist);
      // _api_service.deptList();
    } catch (e) {
      print("Cubit $e");
      emit(state.copyWith(status: "error"));
    }
  }
}
