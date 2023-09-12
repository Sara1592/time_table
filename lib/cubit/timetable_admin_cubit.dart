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
  bool isShow = false;
  int? selectedVal;
  int? selectedValBat;
  int? selectedValYear;
  int? selectedValClass;
  bool isSearchButtonEnabled = false;
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
    emit(state.copyWith(status: "loading123"));
    try {
      var batchList = await _api_service.deptBatchList(val);
      deptBatchList = batchList;
      // print("fe $deptBatchList");
      emit(state.copyWith(status: "loaded123"));
    } catch (e) {
      print("FetchDeptBatchList $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  fetchDeptClassTimeTableList(deptID, classID, batchID) async {
    emit(state.copyWith(status: "loading"));
    try {
      var deptClassTimetable =
          await _api_service.deptClassTimeTableList(deptID, classID, batchID);
      deptClassTimetable['data'].forEach((key, value) {
        if (value is List) {
          value.sort((a, b) {
            final periodA = a['period_no'];
            final periodB = b['period_no'];
            // final periodB = int.tryParse(b['period_no']);
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
      var datails = {
        "dept_id": deptID,
        "batch_id": batchID,
        "class_code": classID,
      };
      emit(state.copyWith(
          status: "loaded1",
          list: deptClassTimeTableList,
          updateDetails: datails));
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
      emit(state.copyWith(status: "loaded2"));
    } catch (e) {
      print("GetDeptStaffList $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  getDeptStaffWeekTimetable(userID) async {
    emit(state.copyWith(status: "loading1"));
    try {
      List deptStaffWeekTimetable = [];

      var list = await _api_service.deptStaffWeekTimetable(userID);
      list['data']['details'].forEach((key, value) {
        if (value is List) {
          value.sort((a, b) {
            final periodA = a['period_no'];
            final periodB = b['period_no'];
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
    emit(state.copyWith(status: "loading1"));
    try {
      var deptStaffSub = await _api_service.deptStaffSubjectList(val);
      // print(deptStaffSub.runtimeType);
      deptStaffSubList = deptStaffSub;
      // print(deptStaffSubList);
      emit(state.copyWith(status: "loaded3"));
    } catch (e) {
      print("GetDeptStaffSubjectList $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  // getDayorderPeriodNoSbuCode(dayOrderList, dayOrder, periodNo, subCode) async {
  //   // emit(state.copyWith(status: "loading"));
  //   try {
  //     // print("Cubit update $update");
  //     var obj = {
  //       "dayorder": dayOrder,
  //       "period_no": periodNo,
  //       "sub_code": subCode
  //     };
  //     emit(state.copyWith(
  //         updateDetails: obj, status: "dataList", dayorder_1: dayOrderList));
  //   } catch (e) {
  //     print("GetDayorderPeriodNoSbuCode $e");
  //   }
  // }

  updateDeptClassTimetable(finalList) async {
    emit(state.copyWith(status: "loading"));

    try {
      var updateDeptClassTimetable =
          await _api_service.updateDeptClassTimeTable(finalList);
      // await fetchDeptClassTimeTableList(deptID, classID, batchID);

      emit(state.copyWith(status: "success"));
    } catch (e) {
      print("UpdateDeptClassTimetable $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }

  periodsChanged(changesList) async {
    emit(state.copyWith(status: "loading"));
    try {
      emit(state.copyWith(status: "loaded4", periodSList: changesList));
    } catch (e) {
      print("PeriodsChanged $e");
      emit(state.copyWith(status: "error", errorMessage: e.toString()));
    }
  }
}
