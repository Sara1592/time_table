import '../api/api_helper.dart';
import '../models/deptlist_model.dart';

class API_Service {
  final API_Helper _helper = API_Helper();

  Future deptList() async {
    final response = await _helper.get("departmentlist");
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
    return response["data"];
  }

  Future deptStaffList(val) async {
    final response = await _helper.get("deptstafflist?dept_id=$val");
    return response["data"]["users"];
  }

//For Dept Staff TimeTable List
  Future deptStaffTimeTableList(val) async {
    final response = await _helper.get("");
    return response["data"];
  }

  Future deptStaffSubjectList(val) async {
    final response = await _helper.get("staffsubjectlist?user_id=$val");
    // print(response);
    return response["data"];
  }
}
