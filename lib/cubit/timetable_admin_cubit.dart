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
 List<String> deptList = [];

   deptInitial() async {
    emit(state.copyWith(status: "loading"));
    try {
      var list = await _api_service.deptList();
      List<String> dept_list = [];
      dept_list = list.data.map((element) => element.deptName).toList();
      deptList = dept_list;
      // Map<String, dynamic> dept_list = list.toJson();
      print(deptList);
      emit(state.copyWith(status: "loaded", list: dept_list));
      // return dept_list;
    } catch (e) {
      print("Cubit $e");
      emit(state.copyWith(status: "error"));
    }
  }

  void deptBatchList() async {
    emit(state.copyWith(status: "loading"));
    try {
      List rolelist = await _api_service.deptBatchList(1);
      emit(state.copyWith(status: "loaded"));
      // print(rolelist);
      // _api_service.deptList();
    } catch (e) {
      print("Cubit $e");
      emit(state.copyWith(status: "error"));
    }
  }
}
