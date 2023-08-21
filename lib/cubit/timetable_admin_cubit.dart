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
  List deptList = [];
  List deptBatchList = [];
  List deptStaffList = [];
  List deptStaffSubList = [];
  List deptClassTimeTable = [];

  deptInitial() async {
    emit(state.copyWith(status: "loading"));
    try {
      var list = await _api_service.deptList();
      // List dept_list = [];
      // dept_list =  list;
      deptList = list;
      // Map<String, dynamic> dept_list = list.toJson();
      // print(deptList);
      emit(state.copyWith(status: "loaded"));
    } catch (e) {
      print("DeptInitial $e");
      emit(state.copyWith(status: "error"));
    }
  }

  fetchDeptBatchList(val) async {
    emit(state.copyWith(status: "loading"));
    try {
      var batchList = await _api_service.deptBatchList(val);
      deptBatchList = batchList;
      // print("fe $deptBatchList");
      emit(state.copyWith(status: "loaded"));
    } catch (e) {
      print("FetchDeptBatchList $e");
      emit(state.copyWith(status: "error"));
    }
  }

  fetchDeptClassTimeTableList() async {
    emit(state.copyWith(status: "loading"));
    try {
      var deptClassTimeTable = await _api_service.deptClassTimeTableList();
      deptClassTimeTable = deptClassTimeTable;
      print(deptClassTimeTable);
      emit(state.copyWith(status: "loaded"));
    } catch (e) {
      print("FetchDeptClassTimeTableList $e");
      emit(state.copyWith(status: "error"));
    }
  }

  getDeptStaffList(val) async {
    emit(state.copyWith(status: "loading"));
    try {
      var deptStaff = await _api_service.deptStaffList(val);
      deptStaffList.add(deptStaff);
      // print("Satff List ${deptStaffList}");
      emit(state.copyWith(status: "loaded"));
    } catch (e) {
      print("GetDeptStaffList $e");
      emit(state.copyWith(status: "error"));
    }
  }

  getDeptStaffSubList(val) async {
    emit(state.copyWith(status: "loading"));
    try {
      var deptStaffSub = await _api_service.deptStaffSubjectList(val);
      // print(deptStaffSub.runtimeType);
      deptStaffSubList = deptStaffSub;
      // print(deptStaffSubList);
      emit(state.copyWith(status: "loaded"));
    } catch (e) {
      print("GetDeptStaffSubjectList $e");
      emit(state.copyWith(status: "error"));
    }
  }
}
