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

  Future deptClassTimeTableList() async {
    final response =
        await _helper.get("timetablelist?dept_id=1&class_code=1&batch_id=1");
    return response;
  }

  Future deptStaffList(val) async {
    final response = await _helper.get("deptstafflist?dept_id=$val");
    return response["data"]["users"];
  }

  Future deptStaffWeekTimetable() async {
    final response = await _helper.get("stafftimetable?user_id=351");
    return response;
  }

  Future deptStaffSubjectList(val) async {
    final response = await _helper.get("staffsubjectlist?user_id=$val");
    // print(response);
    return response["data"];
  }

  Future updateDeptClassTimeTable(
    deptId,
    classId,
    batchId,
    userId,
    dayOrder,
    periodNo,
    subCode,
  ) async {
    final response = await _helper.post(
      "updatetimetable",
      {
        "dept_id": deptId,
        "class_code": classId,
        "batch_id": batchId,
        "user_id": userId,
        "dayorder": dayOrder,
        "period_no": periodNo,
        "sub_code": subCode
      },
    );
    // print(response);
    // return response["data"];
  }
}
