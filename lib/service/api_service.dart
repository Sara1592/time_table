import '../api/api_helper.dart';
import '../models/deptlist_model.dart';

class API_Service {
  final API_Helper _helper = API_Helper();

  Future<DeptListModel> deptList() async {
    final response = await _helper.get("departmentlist");

    return deptListModelFromJson(response);
  }

  Future deptBatchList(detpCode) async {
    final response =
        await _helper.get("departmentbatchlist?dept_code=$detpCode");
    print(response);
  }
}
