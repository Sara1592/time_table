import '../api/api_helper.dart';
import '../models/deptlist_model.dart';

class API_Service {
  final API_Helper _helper = API_Helper();

  Future deptList() async {
    final response = await _helper.get("departmentlist");
    // print(response['data']);

    return response['data'];
  }

  Future deptBatchList(val) async {
    final response = await _helper.get("departmentbatchlist?dept_code=$val");
    // print("Code123 $detpCode");
    // print(response["data"]["batch_details"]);
    return response['data'][0]["batch_details"];
  }

  Future deptStaffList(val) async {
    final response = await _helper.get("deptstafflist?dept_id=$val");
    return response["data"];
  }

  Future deptStaffSubjectList(val) async {
    final response = await _helper.get("staffsubjectlist?user_id=$val");
    // print(response);
    return response["data"];
  }
}
