class TimeTableModel {
  String? department;
  String? batch;
  String? year;
  String? classes;

  TimeTableModel({
    this.department,
    this.batch,
    this.year,
    this.classes,
  });
  TimeTableModel.fromJson(Map<String, dynamic> json) {
    department = json['depart'];
    batch = json['batch'];
    year = json['year'];
    classes = json['classes'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data1 = {};
    data1['depart'] = department;
    data1['batch'] = batch;
    data1['year'] = year;
    data1['classess'] = classes;

    return data1;
  }
}
