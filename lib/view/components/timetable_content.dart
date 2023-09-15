// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'package:student_management_web/view/components/period_allocation.dart';
// import 'package:student_management_web/view/components/staff_day_allocation.dart';
// import 'package:student_management_web/view/components/staff_period_allocation.dart';

// import '../../cubit/timetable_admin_cubit.dart';
// import '../../widgets/day_order.dart';
// import 'custom_appbar.dart';
// import 'day_orderallocation.dart';
// import 'header.dart';

// class TimeTableDashboard extends StatefulWidget {
//   List? timeTable;
//   List? staffTimeTable;
//   Map<String, dynamic>? periodsUpdate;
//   Map<String, dynamic>? toUpdate;

//   TimeTableDashboard({
//     Key? key,
//     required this.timeTable,
//     required this.staffTimeTable,
//     this.periodsUpdate,
//     required this.toUpdate,
//   }) : super(key: key);

//   @override
//   State<TimeTableDashboard> createState() => _TimeTableDashboardState();
// }

// class _TimeTableDashboardState extends State<TimeTableDashboard> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;

//     return Scaffold(
//         body: Column(
//           children: <Widget>[
//             // Container(
//             //   color: Colors.white,
//             //   child: CustomAppbar(),
//             // ),
//             Container(
//                 height: height * 0.38,
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: height * 0.01),
//                       child: Header(toUpdate: widget.toUpdate),
//                     ),
//                     // StaffHorizontList(),
//                   ],
//                 )),
//             // Column(
//             //   children: [
//             //     Row(
//             //       children: [
//             //         SingleChildScrollView(
//             //           child: Container(
//             //             color: Color.fromARGB(255, 240, 240, 240),
//             //             // height: height,
//             //             width: width * 0.6,
//             //             child: Column(
//             //               children: [
//             //                 DayOrderAllocation(),
//             //                 Column(
//             //                   children: [
//             //                     Row(
//             //                       children: [
//             //                         SingleChildScrollView(
//             //                           child: PeriodAllocation(
//             //                               timeTable: widget.timeTable,
//             //                               deptDetails: widget.toUpdate,
//             //                               periodsUpdate: widget.periodsUpdate,
                                                            
//             //                               ),
//             //                         ),
//             //                       ],
//             //                     ),
//             //                   ],
//             //                 ),
//             //               ],
//             //             ),
//             //           ),
//             //         ),
//             //         // Column(
//             //         //   children: [
//             //         //     Container(
//             //         //       color: Color.fromARGB(255, 255, 187, 0),
//             //         //       height: height * 1.1,
//             //         //       width: width * 0.4,
//             //         //       child: Column(
//             //         //         children: [
//             //         //           StaffDayOrder(),
//             //         //           Column(
//             //         //             children: [
//             //         //               Row(
//             //         //                 children: [
//             //         //                   StaffPeroidAllocation(
//             //         //                     staffTimeTable: widget.staffTimeTable,
//             //         //                   ),
//             //         //                 ],
//             //         //               ),
//             //         //             ],
//             //         //           ),
//             //         //         ],
//             //         //       ),
//             //         //     ),
//             //         //   ],
//             //         // )
                  
//             //       ],
//             //     ),
//             //   ],
//             // )
            
//           ],
//         ));
//   }
// }
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:student_management_web/view/components/period_allocation.dart';
import 'package:student_management_web/view/components/staff_day_allocation.dart';
import 'package:student_management_web/view/components/staff_period_allocation.dart';

import '../../cubit/timetable_admin_cubit.dart';
import '../../widgets/day_order.dart';
import 'custom_appbar.dart';
import 'day_orderallocation.dart';
import 'header.dart';

class TimeTableDashboard extends StatefulWidget {
  List? timeTable;
  List? staffTimeTable;
  Map<String, dynamic>? periodsUpdate;
  Map<String, dynamic>? toUpdate;

  TimeTableDashboard({
    Key? key,
    required this.timeTable,
    required this.staffTimeTable,
    this.periodsUpdate,
    required this.toUpdate,
  }) : super(key: key);

  @override
  State<TimeTableDashboard> createState() => _TimeTableDashboardState();
}

class _TimeTableDashboardState extends State<TimeTableDashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      // height: height,
      width: width,
      child: Column(
        children: [
          // Container(
          //   color: Colors.white,
          //   child: CustomAppbar(),
          // ),
          Container(
              height: height * 0.38,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Header(toUpdate: widget.toUpdate),
                  ),
                  // StaffHorizontList(),
                ],
              )),
          Expanded(
            child: Container(
              // height: height,
              width: width,
              child: Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 240, 240, 240),
                    height: height * 1.5,
                    width: width * 0.6,
                    child: Column(
                      children: [
                        DayOrderAllocation(),
                        Expanded(
                          child: SingleChildScrollView(
                            child: PeriodAllocation(
                              timeTable: widget.timeTable,
                              deptDetails: widget.toUpdate,
                              periodsUpdate: widget.periodsUpdate,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 255, 187, 0),
                    height: height * 1.1,
                    width: width * 0.4,
                    child: Column(
                      children: [
                        StaffDayOrder(),
                        Expanded(
                          child: SingleChildScrollView(
                            child: StaffPeroidAllocation(
                              staffTimeTable: widget.staffTimeTable,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

