// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cubit/timetable_admin_cubit.dart';
import '../../widgets/datascience.dart';
import '../../widgets/day_order.dart';
import '../../widgets/period_no.dart';
import '../../widgets/subject.dart';
import '../time_table_screen.dart';
import 'timetable_content.dart';

class PeriodAllocation extends StatefulWidget {
  List? timeTable;
  Map<String, dynamic>? deptDetails;
  PeriodAllocation({
    Key? key,
    required this.timeTable,
    required this.deptDetails,
  }) : super(key: key);

  @override
  State<PeriodAllocation> createState() => _PeriodAllocationState();
}

class _PeriodAllocationState extends State<PeriodAllocation> {
  // Color arrColor = const Color.fromARGB(255, 9, 26, 47);
  List<Widget> dayoderone = [];
  List<Widget> dayodertwo = [];
  List<Widget> dayoderthree = [];
  List<Widget> dayoderfour = [];
  List<Widget> dayoderfive = [];
  List<Widget> dayodersix = [];
  var update;
  List finalListToUpdate = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.deptDetails.isUndefinedOrNull ? "empty" : widget.deptDetails);
    var deptDetails =
        widget.deptDetails.isUndefinedOrNull ? "empty" : widget.deptDetails;
    var dayOrder_1 = widget.timeTable.isNull
        ? []
        : widget.timeTable![0]["data"]["dayorder_1"]
            .map((e) => e["subject_detail"])
            .toList();
    var dayOrder_2 = widget.timeTable.isNull
        ? []
        : widget.timeTable![0]["data"]["dayorder_2"]
            .map((e) => e["subject_detail"])
            .toList();
    var dayOrder_3 = widget.timeTable.isNull
        ? []
        : widget.timeTable![0]["data"]["dayorder_3"]
            .map((e) => e["subject_detail"])
            .toList();
    var dayOrder_4 = widget.timeTable.isNull
        ? []
        : widget.timeTable![0]["data"]["dayorder_4"]
            .map((e) => e["subject_detail"])
            .toList();
    var dayOrder_5 = widget.timeTable.isNull
        ? []
        : widget.timeTable![0]["data"]["dayorder_5"]
            .map((e) => e["subject_detail"])
            .toList();
    var dayOrder_6 = widget.timeTable.isNull
        ? []
        : widget.timeTable![0]["data"]["dayorder_6"]
            .map((e) => e["subject_detail"])
            .toList();

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var arrColors = [
      Color.fromRGBO(0, 108, 158, 1),
      Color.fromARGB(255, 255, 92, 92),
      Color.fromARGB(255, 79, 140, 0),
      Color.fromARGB(255, 28, 152, 138),
      Color.fromARGB(255, 186, 117, 220),
      Color.fromARGB(255, 9, 26, 47),
    ];
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.02,
                      top: height * 0.01,
                      bottom: height * 0.03),
                  child: Text("Period No",
                      style: GoogleFonts.montserrat(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 9, 26, 47),
                      )),
                ),
                // DayNum(
                //   dayNum: 'Period No',
                // ),
                PeriodNo(
                  perNum: '01',
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: PeriodNo(
                    perNum: '02',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: PeriodNo(
                    perNum: '03',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: PeriodNo(
                    perNum: '04',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: PeriodNo(
                    perNum: '05',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.8,
              child: const VerticalDivider(
                color: Color.fromARGB(255, 190, 190, 190),
                thickness: 1,
                indent: 5,
                endIndent: 0,
                width: 20,
              ),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Container(
              width: width * .07,
              height: height * .8,
              // color: Colors.amber,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: widget.timeTable.isUndefinedOrNull
                        ? 5
                        : dayOrder_1.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          DragTarget(
                            // onAccept: (data) => setState(() => arrColor = data),
                            builder: (context, accepted, rejected) {
                              return InkWell(
                                onTap: () {},
                                child: Container(
                                    height: height * 0.13,
                                    width: width * 0.07,
                                    color: (widget.timeTable.isUndefinedOrNull)
                                        ? Color(0xFF000000)
                                        : Color(int.parse(
                                            dayOrder_1[index]['color_code'])),
                                    child: (widget.timeTable.isUndefinedOrNull)
                                        ? Text('')
                                        : Center(
                                            child: Text(
                                              dayOrder_1[index]['sub_name']
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                              );
                            },
                            onWillAccept: (data) {
                              // print("On will ${data}");
                              return true;
                            },
                            onAccept: (data) async {
                              // print(
                              //     "Drop ${widget.timeTable.isUndefinedOrNull ? "Data" : "${widget.timeTable![0]["data"]["dayorder_1"][index]["period_no"]}${widget.timeTable![0]["data"]["dayorder_1"][index]["dayorder"]}"}");

                              // print("Before ${dayOrder_1}");
                              // int indexToReplace = index;
                              // var dat = data;
                              dayOrder_1[index] = await data;
                              finalListToUpdate.add({
                                "dept_id": 1,
                                "batch_id": 1,
                                "class_code": 1,
                                "dayorder": widget.timeTable![0]["data"]
                                    ["dayorder_1"][index]["dayorder"],
                                "period_no": widget.timeTable![0]["data"]
                                    ["dayorder_1"][index]["period_no"],
                                "sub_code": dayOrder_1[index]['sub_code'],
                              });
                              // = {
                              //   "dept_id": 1,
                              //   "batch_id": 1,
                              //   "class_code": 1,
                              //   "dayorder": widget.timeTable![0]["data"]
                              //       ["dayorder_1"][index]["dayorder"],
                              //   "period_no": widget.timeTable![0]["data"]
                              //       ["dayorder_1"][index]["period_no"],
                              //   "sub_code": dayOrder_1[index]['sub_code'],
                              // };
                              // print(dayOrder_1[index]['sub_code']);
                              // context
                              //     .read<TimetableAdminCubit>()
                              //     .getDayorderPeriodNoSbuCode(
                              //         dayOrder_1,
                              //         widget.timeTable![0]["data"]["dayorder_1"]
                              //             [index]["dayorder"],
                              //         widget.timeTable![0]["data"]["dayorder_1"]
                              //             [index]["period_no"],
                              //         dayOrder_1[index]['sub_code']);

                              // setState(() {
                              //   context
                              //       .read<TimetableAdminCubit>()
                              //       .getDayorderPeriodNoSbuCode(
                              //           widget.timeTable![0]["data"]["dayorder_1"]
                              //               [index]["dayorder"],
                              //           widget.timeTable![0]["data"]["dayorder_1"]
                              //               [index]["period_no"],
                              //           dayOrder_1[index]['sub_code']);
                              // });
                              // dayOrder_1[indexToReplace] = dat;

                              // var obj = {
                              //   "dayorder": widget.timeTable![0]["data"]
                              //       ["dayorder_1"][index]["dayorder"],
                              //   "period_no": widget.timeTable![0]["data"]
                              //       ["dayorder_1"][index]["period_no"],
                              //   "sub_code": dayOrder_1[index]['sub_code']
                              // };
                              // Future.delayed(
                              //   Duration(seconds: 2),
                              //   () => ,
                              // );

                              // print("After ${obj.runtimeType}");
                            },
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ],
                      );
                    },
                  ))
                ],
              ),
            ),
            SizedBox(
              width: width * 0.008,
            ),
            Container(
              width: width * .07,
              height: height * .8,
              // color: Colors.amber,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: widget.timeTable.isUndefinedOrNull
                        ? 5
                        : dayOrder_2.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          DragTarget(
                            // onAccept: (data) => setState(() => arrColor = data),
                            builder: (context, accepted, rejected) {
                              return InkWell(
                                onTap: () {
                                  // print(index);
                                },
                                child: Container(
                                    height: height * 0.13,
                                    width: width * 0.07,
                                    color: (widget.timeTable.isUndefinedOrNull)
                                        ? Color(0xFF000000)
                                        : Color(int.parse(
                                            dayOrder_2[index]['color_code'])),
                                    child: (widget.timeTable.isUndefinedOrNull)
                                        ? Text('')
                                        : Center(
                                            child: Text(
                                              dayOrder_2[index]['sub_name']
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              dayOrder_2[index] = data;
                              finalListToUpdate.add({
                                "dept_id": 1,
                                "batch_id": 1,
                                "class_code": 1,
                                "dayorder": widget.timeTable![0]["data"]
                                    ["dayorder_2"][index]["dayorder"],
                                "period_no": widget.timeTable![0]["data"]
                                    ["dayorder_2"][index]["period_no"],
                                "sub_code": dayOrder_2[index]['sub_code'],
                              });
                            },
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ],
                      );
                    },
                  ))
                ],
              ),
            ),
            SizedBox(
              width: width * 0.008,
            ),
            Container(
              width: width * .07,
              height: height * .8,
              // color: Colors.amber,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: widget.timeTable.isUndefinedOrNull
                        ? 5
                        : dayOrder_3.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          DragTarget(
                            // onAccept: (data) => setState(() => arrColor = data),
                            builder: (context, accepted, rejected) {
                              return InkWell(
                                onTap: () {
                                  // print(index);
                                },
                                child: Container(
                                    height: height * 0.13,
                                    width: width * 0.07,
                                    color: (widget.timeTable.isUndefinedOrNull)
                                        ? Color(0xFF000000)
                                        : Color(int.parse(
                                            dayOrder_3[index]['color_code'])),
                                    child: (widget.timeTable.isUndefinedOrNull)
                                        ? Text('')
                                        : Center(
                                            child: Text(
                                              dayOrder_3[index]['sub_name']
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              int indexToReplace = index;
                              var dat = data;
                              dayOrder_3[indexToReplace] = dat;
                              finalListToUpdate.add({
                                "dept_id": 1,
                                "batch_id": 1,
                                "class_code": 1,
                                "dayorder": widget.timeTable![0]["data"]
                                    ["dayorder_3"][index]["dayorder"],
                                "period_no": widget.timeTable![0]["data"]
                                    ["dayorder_3"][index]["period_no"],
                                "sub_code": dayOrder_3[index]['sub_code'],
                              });
                            },
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ],
                      );
                    },
                  ))
                ],
              ),
            ),
            SizedBox(
              width: width * 0.008,
            ),
            Container(
              width: width * .07,
              height: height * .8,
              // color: Colors.amber,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: widget.timeTable.isUndefinedOrNull
                        ? 5
                        : dayOrder_4.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          DragTarget(
                            // onAccept: (data) => setState(() => arrColor = data),
                            builder: (context, accepted, rejected) {
                              return InkWell(
                                onTap: () {
                                  // print(index);
                                },
                                child: Container(
                                    height: height * 0.13,
                                    width: width * 0.07,
                                    color: (widget.timeTable.isUndefinedOrNull)
                                        ? Color(0xFF000000)
                                        : Color(int.parse(
                                            dayOrder_4[index]['color_code'])),
                                    child: (widget.timeTable.isUndefinedOrNull)
                                        ? Text('')
                                        : Center(
                                            child: Text(
                                              dayOrder_4[index]['sub_name']
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              int indexToReplace = index;
                              var dat = data;
                              dayOrder_4[indexToReplace] = dat;
                              finalListToUpdate.add({
                                "dept_id": 1,
                                "batch_id": 1,
                                "class_code": 1,
                                "dayorder": widget.timeTable![0]["data"]
                                    ["dayorder_4"][index]["dayorder"],
                                "period_no": widget.timeTable![0]["data"]
                                    ["dayorder_4"][index]["period_no"],
                                "sub_code": dayOrder_4[index]['sub_code'],
                              });
                            },
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ],
                      );
                    },
                  ))
                ],
              ),
            ),
            SizedBox(
              width: width * 0.008,
            ),
            Container(
              width: width * .07,
              height: height * .8,
              // color: Colors.amber,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: widget.timeTable.isUndefinedOrNull
                        ? 5
                        : dayOrder_5.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          DragTarget(
                            // onAccept: (data) => setState(() => arrColor = data),
                            builder: (context, accepted, rejected) {
                              return InkWell(
                                onTap: () {
                                  // print(index);
                                },
                                child: Container(
                                    height: height * 0.13,
                                    width: width * 0.07,
                                    color: (widget.timeTable.isUndefinedOrNull)
                                        ? Color(0xFF000000)
                                        : Color(int.parse(
                                            dayOrder_5[index]['color_code'])),
                                    child: (widget.timeTable.isUndefinedOrNull)
                                        ? Text('')
                                        : Center(
                                            child: Text(
                                              dayOrder_5[index]['sub_name']
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              int indexToReplace = index;
                              var dat = data;
                              dayOrder_5[indexToReplace] = dat;
                              finalListToUpdate.add({
                                "dept_id": 1,
                                "batch_id": 1,
                                "class_code": 1,
                                "dayorder": widget.timeTable![0]["data"]
                                    ["dayorder_5"][index]["dayorder"],
                                "period_no": widget.timeTable![0]["data"]
                                    ["dayorder_5"][index]["period_no"],
                                "sub_code": dayOrder_5[index]['sub_code'],
                              });
                            },
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ],
                      );
                    },
                  ))
                ],
              ),
            ),
            SizedBox(
              width: width * 0.008,
            ),
            Container(
              width: width * .07,
              height: height * .8,
              // color: Colors.amber,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: widget.timeTable.isUndefinedOrNull
                        ? 5
                        : dayOrder_6.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          DragTarget(
                            // onAccept: (data) => setState(() => arrColor = data),
                            builder: (context, accepted, rejected) {
                              return InkWell(
                                onTap: () {},
                                child: Container(
                                    height: height * 0.13,
                                    width: width * 0.07,
                                    color: (widget.timeTable.isUndefinedOrNull)
                                        ? Color(0xFF000000)
                                        : Color(int.parse(
                                            dayOrder_6[index]['color_code'])),
                                    child: (widget.timeTable.isUndefinedOrNull)
                                        ? Text('')
                                        : Center(
                                            child: Text(
                                              dayOrder_6[index]['sub_name']
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              int indexToReplace = index;
                              var dat = data;
                              dayOrder_6[indexToReplace] = dat;
                              finalListToUpdate.add({
                                "dept_id": 1,
                                "batch_id": 1,
                                "class_code": 1,
                                "dayorder": widget.timeTable![0]["data"]
                                    ["dayorder_6"][index]["dayorder"],
                                "period_no": widget.timeTable![0]["data"]
                                    ["dayorder_6"][index]["period_no"],
                                "sub_code": dayOrder_6[index]['sub_code'],
                              });
                              // print(data);
                            },
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                        ],
                      );
                    },
                  ))
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: width * 0.15,
          height: height * 0.07,
          child: ElevatedButton(
            onPressed: () async {
              print(finalListToUpdate);
              await context
                  .read<TimetableAdminCubit>()
                  .updateDeptClassTimetable(finalListToUpdate);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xffFFB900)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Save Details',
                  style: GoogleFonts.montserrat(
                      fontSize: 17,
                      color: Color(0xff252525),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
