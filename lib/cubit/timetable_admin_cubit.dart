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
  List deptStaffWeekTimetableList = [];
  List deptStaffSubList = [];
  List deptClassTimeTableList = [];

  deptInitial() async {
    emit(state.copyWith(status: "loading"));
    try {
      var list = await _api_service.deptList();
      deptList = list;
      emit(state.copyWith(status: "loaded"));
    } catch (e) {
      print("DeptInitial $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
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
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  fetchDeptClassTimeTableList() async {
    emit(state.copyWith(status: "loading"));
    try {
      var deptClassTimetable = await _api_service.deptClassTimeTableList();
      deptClassTimetable['data'].forEach((key, value) {
        if (value is List) {
          value.sort((a, b) {
            final periodA = int.tryParse(a['period_no']);
            final periodB = int.tryParse(b['period_no']);
            return periodA != null && periodB != null ? periodA - periodB : 0;
          });
        }
      });
      deptClassTimetable['data'].forEach((key, value) {
        if (value is List) {
          for (var entry in value) {
            if (entry['subject_detail'] == null) {
              entry['subject_detail'] = {
                "sub_code": 0,
                "sub_name": "",
                "color_code": "0xFF000000",
                "color_name": "Black",
              };
            }
          }
        }
      });

      deptClassTimeTableList.add(deptClassTimetable);
      // List list_1 = await deptClassTimetable['dayorder_1'];
      // list_1.sort((a, b) => a['period_no'].compareTo(b['period_no']));
      // var list_2 = await list_1.map((e) => e["subject_detail"]).toList();
      // for (int i = 0; i < list_2.length; i++) {
      //   if (list_2[i] == null) {
      //     list_2[i] = {
      //       "sub_code": 0,
      //       "sub_name": "",
      //       "color_code": "0xFF000000",
      //       "color_name": "Black",
      //     };
      //   }
      // }
      // print(deptClassTimeTableList);
      // deptClassTimeTableList.add(deptClassTimetable);
      // print(deptClassTimeTable);
      emit(state.copyWith(status: "loaded1", list: deptClassTimeTableList));
    } catch (e) {
      print("FetchDeptClassTimeTableList $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  getDeptStaffList(val) async {
    emit(state.copyWith(status: "loading"));
    try {
      var deptStaff = await _api_service.deptStaffList(val);
      deptStaffList = deptStaff;
      // print("Satff List ${deptStaffList}");
      emit(state.copyWith(status: "loaded"));
    } catch (e) {
      print("GetDeptStaffList $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  getDeptStaffWeekTimetable() async {
    emit(state.copyWith(status: "loading"));
    try {
      List deptStaffWeekTimetable = [];

      var list = await _api_service.deptStaffWeekTimetable();
      list['data']['details'].forEach((key, value) {
        if (value is List) {
          value.sort((a, b) {
            final periodA = int.tryParse(a['period_no']);
            final periodB = int.tryParse(b['period_no']);
            return periodA != null && periodB != null ? periodA - periodB : 0;
          });
        }
      });
      deptStaffWeekTimetable.add(list);
      // print("Staff Timetable $deptStaffWeekTimetable");
      // print("Staff Timetable $deptStaffWeekTimetable");
      emit(state.copyWith(status: "loaded2", list1: deptStaffWeekTimetable));
      // print(deptStaffWeekTimetable);
    } catch (e) {
      print("GetDeptStaffWeekTimeTable $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
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
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  updateDeptClassTimetable(
      deptId, classId, batchId, userId, dayOrder, periodNo, subCode) async {
    emit(state.copyWith(status: "loading"));
    var updateDeptClassTimetable = await _api_service.updateDeptClassTimeTable(
        deptId, classId, batchId, userId, dayOrder, periodNo, subCode);
    try {} catch (e) {
      print("UpdateDeptClassTimetable $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }
}
