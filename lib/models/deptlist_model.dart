// To parse this JSON data, do
//
//     final deptListModel = deptListModelFromJson(jsonString);

import 'dart:convert';

DeptListModel deptListModelFromJson(String str) =>
    DeptListModel.fromJson(json.decode(str));

String deptListModelToJson(DeptListModel data) => json.encode(data.toJson());

class DeptListModel {
  List<Datum> data;

  DeptListModel({
    required this.data,
  });

  factory DeptListModel.fromJson(Map<String, dynamic> json) => DeptListModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String deptCode;
  String deptName;

  Datum({
    required this.deptCode,
    required this.deptName,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        deptCode: json["dept_code"],
        deptName: json["dept_name"],
      );

  Map<String, dynamic> toJson() => {
        "dept_code": deptCode,
        "dept_name": deptName,
      };
}
