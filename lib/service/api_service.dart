import '../api/api_helper.dart';
import '../models/deptlist_model.dart';

class API_Service {
  final API_Helper _helper = API_Helper();

  Future deptList() async {
    final response = await _helper.get("departmentlist");
    // print(response.runtimeType);
    return response['data'];
  }

  Future deptBatchList(val) async {
    final response = await _helper.get("departmentbatchlist?dept_code=$val");
    // print("Code123 $detpCode");
    // print(response["data"]["batch_details"]);
    return response['data'][0]["batch_details"];
  }

  Future deptClassTimeTableList(deptID, classID, batchID) async {
    final response = await _helper.get(
        "timetablelist?dept_id=$deptID&class_code=$classID&batch_id=$batchID");
    return response;
  }

  Future deptStaffList(val) async {
    final response = await _helper.get("deptstafflist?dept_id=$val");
    return response["data"]["users"];
  }

  Future deptStaffWeekTimetable(userID) async {
    final response = await _helper.get("stafftimetable?user_id=$userID");
    return response;
  }

  Future deptStaffSubjectList(val) async {
    final response = await _helper.get("staffsubjectlist?user_id=$val");
    // print(response);
    return response["data"];
  }

  Future updateDeptClassTimeTable(
      finalList) async {
    final response = await _helper.post("updatetimetable", finalList);
    // print(response);
    // return response["data"];
  }
}
