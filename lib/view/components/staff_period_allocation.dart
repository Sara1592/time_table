// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/empty_container.dart';
import '../../widgets/period_no.dart';
import '../../widgets/staff_period.dart';
import '../../widgets/staff_subject.dart';
import '../../widgets/subject.dart';

class StaffPeroidAllocation extends StatefulWidget {
  List? staffTimeTable;
  StaffPeroidAllocation({
    Key? key,
    required this.staffTimeTable,
  }) : super(key: key);

  @override
  State<StaffPeroidAllocation> createState() => _StaffPeroidAllocationState();
}

class _StaffPeroidAllocationState extends State<StaffPeroidAllocation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dayOrder_1 = widget.staffTimeTable.isUndefinedOrNull
        ? []
        : widget.staffTimeTable![0]["data"]["details"]["dayorder:1"]
            .map((e) => e["subjectDetails"])
            .toList();
    var dayOrder_2 = widget.staffTimeTable.isUndefinedOrNull
        ? []
        : widget.staffTimeTable![0]["data"]["details"]["dayorder:2"]
            .map((e) => e["subjectDetails"])
            .toList();
    var dayOrder_3 = widget.staffTimeTable.isUndefinedOrNull
        ? []
        : widget.staffTimeTable![0]["data"]["details"]["dayorder:3"]
            .map((e) => e["subjectDetails"])
            .toList();
    var dayOrder_4 = widget.staffTimeTable.isUndefinedOrNull
        ? []
        : widget.staffTimeTable![0]["data"]["details"]["dayorder:4"]
            .map((e) => e["subjectDetails"])
            .toList();
    var dayOrder_5 = widget.staffTimeTable.isUndefinedOrNull
        ? []
        : widget.staffTimeTable![0]["data"]["details"]["dayorder:5"]
            .map((e) => e["subjectDetails"])
            .toList();
    var dayOrder_6 = widget.staffTimeTable.isUndefinedOrNull
        ? []
        : widget.staffTimeTable![0]["data"]["details"]["dayorder:6"]
            .map((e) => e["subjectDetails"])
            .toList();

    // print(
    // "Staff ${widget.staffTimeTable.isUndefinedOrNull ? [] : staffTimeTableList}");
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.02,
              ),
              child: Text("Period No",
                  style: GoogleFonts.montserrat(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
            Column(
              children: [
                StaffPeriod(
                  staffPer: '01',
                ),
                StaffPeriod(
                  staffPer: '02',
                ),
                StaffPeriod(
                  staffPer: '03',
                ),
                StaffPeriod(
                  staffPer: '04',
                ),
                StaffPeriod(
                  staffPer: '05',
                ),
              ],
            )
            // DayNum(
            //   dayNum: 'Period No',
            // ),
          ],
        ),
        SizedBox(width: width * 0.004),
        Container(
          height: height * 0.88,
          width: width * 0.04,
          // color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: widget.staffTimeTable.isUndefinedOrNull
                    ? 5
                    : dayOrder_1.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Tooltip(
                        message: widget.staffTimeTable.isUndefinedOrNull
                            ? ""
                            : ((dayOrder_1[index]["sub_name"] == "null"))
                                ? ""
                                : 'Subject            : ${dayOrder_1[index]["sub_name"]} \n\nDepartment   : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:1"][0]["department"]} \n\nYear                  : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:1"][0]["year"]} ',
                        height: height * 0.14,
                        preferBelow: false,
                        verticalOffset: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(9.0)),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                        child: widget.staffTimeTable.isUndefinedOrNull
                            ? Empty_Container()
                            : (dayOrder_1[index]["sub_name"] == "null")
                                ? StaffSubjectFree(subName: 'FREE')
                                : StaffSubject(
                                    subName: '${dayOrder_1[index]["sub_name"]}',
                                    subName1:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:1"][0]["year"]}',
                                    year:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:1"][0]["department"]}',
                                  ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                    ],
                  );
                },
              ))
              // SizedBox(
              //   height: height * 0.05,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // StaffSubjectFree(subName: 'FREE'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\n Department   : Computer Science \n\n Year                : 1st year ',
              //   height: height * 0.17,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: TextStyle(
              //     color: Colors.black,
              //     fontSize: 8,
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Container(
          height: height * 0.88,
          width: width * 0.04,
          // color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: widget.staffTimeTable.isUndefinedOrNull
                    ? 5
                    : dayOrder_2.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Tooltip(
                        message: widget.staffTimeTable.isUndefinedOrNull
                            ? ""
                            : ((dayOrder_2[index]["sub_name"] == "null"))
                                ? ""
                                :'Subject            : ${dayOrder_2[index]["sub_name"]} \n\nDepartment   : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:1"][0]["department"]} \n\nYear                  : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:1"][0]["year"]} ',
                        height: height * 0.14,
                        preferBelow: false,
                        verticalOffset: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(9.0)),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                        child: widget.staffTimeTable.isUndefinedOrNull
                            ? Empty_Container()
                            : (dayOrder_2[index]["sub_name"] == "null")
                                ? StaffSubjectFree(subName: 'FREE')
                                : StaffSubject(
                                    subName: '${dayOrder_2[index]["sub_name"]}',
                                    subName1:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:2"][0]["year"]}',
                                    year:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:2"][0]["department"]}',
                                  ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                    ],
                  );
                },
              ))
              // SizedBox(
              //   height: height * 0.05,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // StaffSubjectFree(subName: 'FREE'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\n Department   : Computer Science \n\n Year                : 1st year ',
              //   height: height * 0.17,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: TextStyle(
              //     color: Colors.black,
              //     fontSize: 8,
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Container(
          height: height * 0.88,
          width: width * 0.04,
          // color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: widget.staffTimeTable.isUndefinedOrNull
                    ? 5
                    : dayOrder_3.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Tooltip(
                        message: widget.staffTimeTable.isUndefinedOrNull
                            ? ""
                            : ((dayOrder_3[index]["sub_name"] == "null"))
                                ? ""
                                :'Subject            : ${dayOrder_3[index]["sub_name"]} \n\nDepartment   : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:3"][0]["department"]} \n\nYear                  : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:3"][0]["year"]} ',
                        height: height * 0.14,
                        preferBelow: false,
                        verticalOffset: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(9.0)),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                        child: widget.staffTimeTable.isUndefinedOrNull
                            ? Empty_Container()
                            : (dayOrder_3[index]["sub_name"] == "null")
                                ? StaffSubjectFree(subName: 'FREE')
                                : StaffSubject(
                                    subName: '${dayOrder_3[index]["sub_name"]}',
                                    subName1:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:3"][0]["year"]}',
                                    year:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:3"][0]["department"]}',
                                  ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                    ],
                  );
                },
              ))
              // SizedBox(
              //   height: height * 0.05,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // StaffSubjectFree(subName: 'FREE'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\n Department   : Computer Science \n\n Year                : 1st year ',
              //   height: height * 0.17,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: TextStyle(
              //     color: Colors.black,
              //     fontSize: 8,
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Container(
          height: height * 0.88,
          width: width * 0.04,
          // color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: widget.staffTimeTable.isUndefinedOrNull
                    ? 5
                    : dayOrder_4.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Tooltip(
                        message: widget.staffTimeTable.isUndefinedOrNull
                            ? ""
                            : ((dayOrder_4[index]["sub_name"] == "null"))
                                ? ""
                                :'Subject            : ${dayOrder_4[index]["sub_name"]} \n\nDepartment   : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:4"][0]["department"]} \n\nYear                  : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:4"][0]["year"]} ',
                        height: height * 0.14,
                        preferBelow: false,
                        verticalOffset: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(9.0)),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                        child: widget.staffTimeTable.isUndefinedOrNull
                            ? Empty_Container()
                            : (dayOrder_4[index]["sub_name"] == "null")
                                ? StaffSubjectFree(subName: 'FREE')
                                : StaffSubject(
                                    subName: '${dayOrder_4[index]["sub_name"]}',
                                    subName1:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:4"][0]["year"]}',
                                    year:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:4"][0]["department"]}',
                                  ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                    ],
                  );
                },
              ))
              // SizedBox(
              //   height: height * 0.05,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // StaffSubjectFree(subName: 'FREE'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\n Department   : Computer Science \n\n Year                : 1st year ',
              //   height: height * 0.17,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: TextStyle(
              //     color: Colors.black,
              //     fontSize: 8,
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Container(
          height: height * 0.88,
          width: width * 0.04,
          // color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: widget.staffTimeTable.isUndefinedOrNull
                    ? 5
                    : dayOrder_5.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Tooltip(
                        message: widget.staffTimeTable.isUndefinedOrNull
                            ? ""
                            : ((dayOrder_5[index]["sub_name"] == "null"))
                                ? ""
                                :'Subject            : ${dayOrder_5[index]["sub_name"]} \n\nDepartment   : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:5"][0]["department"]} \n\nYear                  : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:5"][0]["year"]} ',
                        height: height * 0.14,
                        preferBelow: false,
                        verticalOffset: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(9.0)),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                        child: widget.staffTimeTable.isUndefinedOrNull
                            ? Empty_Container()
                            : (dayOrder_5[index]["sub_name"] == "null")
                                ? StaffSubjectFree(subName: 'FREE')
                                : StaffSubject(
                                    subName: '${dayOrder_5[index]["sub_name"]}',
                                    subName1:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:5"][0]["year"]}',
                                    year:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:5"][0]["department"]}',
                                  ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                    ],
                  );
                },
              ))
              // SizedBox(
              //   height: height * 0.05,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // StaffSubjectFree(subName: 'FREE'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\n Department   : Computer Science \n\n Year                : 1st year ',
              //   height: height * 0.17,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: TextStyle(
              //     color: Colors.black,
              //     fontSize: 8,
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Container(
          height: height * 0.88,
          width: width * 0.04,
          // color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: widget.staffTimeTable.isUndefinedOrNull
                    ? 5
                    : dayOrder_6.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Tooltip(
                        message: widget.staffTimeTable.isUndefinedOrNull
                            ? ""
                            : ((dayOrder_6[index]["sub_name"] == "null"))
                                ? ""
                                :'Subject            : ${dayOrder_6[index]["sub_name"]} \n\nDepartment   : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:6"][0]["department"]} \n\nYear                  : ${widget.staffTimeTable![0]["data"]["details"]["dayorder:6"][0]["year"]} ',
                        height: height * 0.14,
                        preferBelow: false,
                        verticalOffset: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(9.0)),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                        child: widget.staffTimeTable.isUndefinedOrNull
                            ? Empty_Container()
                            : (dayOrder_6[index]["sub_name"] == "null")
                                ? StaffSubjectFree(subName: 'FREE')
                                : StaffSubject(
                                    subName: '${dayOrder_6[index]["sub_name"]}',
                                    subName1:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:6"][0]["year"]}',
                                    year:
                                        '${widget.staffTimeTable![0]["data"]["details"]["dayorder:6"][0]["department"]}',
                                  ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                    ],
                  );
                },
              ))
              // SizedBox(
              //   height: height * 0.05,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              //   height: height * 0.14,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: GoogleFonts.montserrat(
              //     fontSize: 10.0,
              //     fontWeight: FontWeight.w600,
              //     color: Color(0xFF262626),
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // StaffSubjectFree(subName: 'FREE'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Tooltip(
              //   message:
              //       'Subject            : Oops \n\n Department   : Computer Science \n\n Year                : 1st year ',
              //   height: height * 0.17,
              //   preferBelow: false,
              //   verticalOffset: 55,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       borderRadius: BorderRadius.circular(9.0)),
              //   textStyle: TextStyle(
              //     color: Colors.black,
              //     fontSize: 8,
              //   ),
              //   child: StaffSubject(
              //     subName: 'Oops',
              //     subName1: 'CS',
              //     year: '2023',
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
