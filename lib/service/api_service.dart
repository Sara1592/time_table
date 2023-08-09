import '../api/api_helper.dart';
import '../models/deptlist_model.dart';

class API_Service {
  final API_Helper _helper = API_Helper();

  Future deptList() async {
    final response = await _helper.get("departmentlist");
    // print(response);
    var rolelist = response['data']
        .map<DeptListModel>(
            (e) => DeptListModel.fromJson(e as Map<String, dynamic>))
        .toList();
         print(rolelist);
    // return response;
  }
}
