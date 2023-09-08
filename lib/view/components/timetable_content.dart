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
  Map<String, dynamic>? toUpdate;

  TimeTableDashboard({
    Key? key,
    required this.timeTable,
    required this.staffTimeTable,
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
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
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
          Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 240, 240, 240),
                    height: height * 1.1,
                    width: width * 0.6,
                    child: Column(
                      children: [
                        DayOrderAllocation(),
                        Column(
                          children: [
                            Row(
                              children: [
                                PeriodAllocation(
                                    timeTable: widget.timeTable,
                                    deptDetails: widget.toUpdate),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 255, 187, 0),
                        height: height * 1.1,
                        width: width * 0.4,
                        child: Column(
                          children: [
                            StaffDayOrder(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    StaffPeroidAllocation(
                                      staffTimeTable: widget.staffTimeTable,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
          // SingleChildScrollView(
          //   child: Row(
          //     children: [
          //       Column(
          //         children: [
          //           Container(
          //             height: height * 0.5,
          //             width: width * 0.8,
          //             color: Color.fromARGB(255, 240, 240, 240),
          //             child: DayOrder(),
          //           ),
          //         ],
          //       ),
          //       // Column(
          //       //   children: [
          //       //     Container(
          //       //       width: 500,
          //       //       height: 678,
          //       //       color: Color.fromARGB(255, 255, 187, 0),
          //       //       child: Column(
          //       //         children: [
          //       //           Row(
          //       //             mainAxisAlignment: MainAxisAlignment.start,
          //       //             children: [
          //       //               Container(
          //       //                 child: const Row(
          //       //                   children: [
          //       //                     Padding(
          //       //                       padding:
          //       //                           EdgeInsets.only(left: 10, top: 30),
          //       //                       child: Text(
          //       //                         "Day Order",
          //       //                         style: TextStyle(
          //       //                             fontWeight: FontWeight.w700,
          //       //                             fontSize: 16.0,
          //       //                             color: Colors.white),
          //       //                       ),
          //       //                     ),
          //       //                     Padding(
          //       //                       padding:
          //       //                           EdgeInsets.only(left: 20.0, top: 30),
          //       //                       child: Text(
          //       //                         "01",
          //       //                         style: TextStyle(
          //       //                             fontWeight: FontWeight.w700,
          //       //                             fontSize: 16.0,
          //       //                             color: Colors.white),
          //       //                       ),
          //       //                     ),
          //       //                    Padding(
          //       //                       padding:
          //       //                           EdgeInsets.only(left: 50.0, top: 30),
          //       //                       child: Text(
          //       //                         "02",
          //       //                         style: TextStyle(
          //       //                             fontWeight: FontWeight.w700,
          //       //                             fontSize: 16.0,
          //       //                             color: Colors.white),
          //       //                       ),
          //       //                     ),
          //       //                     Padding(
          //       //                       padding:
          //       //                           EdgeInsets.only(left: 50.0, top: 30),
          //       //                       child: Text(
          //       //                         "03",
          //       //                         style: TextStyle(
          //       //                             fontWeight: FontWeight.w700,
          //       //                             fontSize: 16.0,
          //       //                             color: Colors.white),
          //       //                       ),
          //       //                     ),
          //       //                     Padding(
          //       //                       padding:
          //       //                           EdgeInsets.only(left: 50.0, top: 30),
          //       //                       child: Text(
          //       //                         "04",
          //       //                         style: TextStyle(
          //       //                             fontWeight: FontWeight.w700,
          //       //                             fontSize: 16.0,
          //       //                             color: Colors.white),
          //       //                       ),
          //       //                     ),
          //       //                     Padding(
          //       //                       padding:
          //       //                           EdgeInsets.only(left: 50.0, top: 30),
          //       //                       child: Text(
          //       //                         "05",
          //       //                         style: TextStyle(
          //       //                             fontWeight: FontWeight.w700,
          //       //                             fontSize: 16.0,
          //       //                             color: Colors.white),
          //       //                       ),
          //       //                     ),
          //       //                     Padding(
          //       //                       padding:
          //       //                           EdgeInsets.only(left: 50.0, top: 30),
          //       //                       child: Text(
          //       //                         "06",
          //       //                         style: TextStyle(
          //       //                             fontWeight: FontWeight.w700,
          //       //                             fontSize: 16.0,
          //       //                             color: Colors.white),
          //       //                       ),
          //       //                     ),
          //       //                   ],
          //       //                 ),
          //       //               ),
          //       //             ],
          //       //           ),
          //       //           const Row(
          //       //             children: [
          //       //               Column(
          //       //                 children: [
          //       //                   Padding(
          //       //                     padding:
          //       //                         EdgeInsets.only(left: 10.0, top: 20.0),
          //       //                     child: Text(
          //       //                       "Period No",
          //       //                       style: TextStyle(
          //       //                           fontWeight: FontWeight.w700,
          //       //                           fontSize: 16.0,
          //       //                           color: Colors.white),
          //       //                     ),
          //       //                   ),
          //       //                 ],
          //       //               )
          //       //             ],
          //       //           ),
          //       //           Row(
          //       //             children: [
          //       //               const Column(
          //       //                 children: [
          //       //                   Padding(
          //       //                     padding:
          //       //                         EdgeInsets.only(left: 40.0, top: 10),
          //       //                     child: Text(
          //       //                       "01",
          //       //                       style: TextStyle(
          //       //                           fontWeight: FontWeight.w700,
          //       //                           fontSize: 16.0,
          //       //                           color: Colors.white),
          //       //                     ),
          //       //                   ),
          //       //                   Padding(
          //       //                     padding:
          //       //                         EdgeInsets.only(left: 40.0, top: 80),
          //       //                     child: Text(
          //       //                       "02",
          //       //                       style: TextStyle(
          //       //                           fontWeight: FontWeight.w700,
          //       //                           fontSize: 16.0,
          //       //                           color: Colors.white),
          //       //                     ),
          //       //                   ),
          //       //                   Padding(
          //       //                     padding:
          //       //                         EdgeInsets.only(left: 40.0, top: 80),
          //       //                     child: Text(
          //       //                       "03",
          //       //                       style: TextStyle(
          //       //                           fontWeight: FontWeight.w700,
          //       //                           fontSize: 16.0,
          //       //                           color: Colors.white),
          //       //                     ),
          //       //                   ),
          //       //                   Padding(
          //       //                     padding:
          //       //                         EdgeInsets.only(left: 40.0, top: 80),
          //       //                     child: Text(
          //       //                       "04",
          //       //                       style: TextStyle(
          //       //                           fontWeight: FontWeight.w700,
          //       //                           fontSize: 16.0,
          //       //                           color: Colors.white),
          //       //                     ),
          //       //                   ),
          //       //                   Padding(
          //       //                     padding:
          //       //                         EdgeInsets.only(left: 40.0, top: 80),
          //       //                     child: Text(
          //       //                       "05",
          //       //                       style: TextStyle(
          //       //                           fontWeight: FontWeight.w700,
          //       //                           fontSize: 16.0,
          //       //                           color: Colors.white),
          //       //                     ),
          //       //                   ),
          //       //                 ],
          //       //               ),
          //       //               Padding(
          //       //                 padding: const EdgeInsets.only(
          //       //                   left: 40.0,
          //       //                 ),
          //       //                 child: Column(
          //       //                   children: [
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     )
          //       //                   ],
          //       //                 ),
          //       //               ),
          //       //               Padding(
          //       //                 padding: const EdgeInsets.only(
          //       //                   left: 15.0,
          //       //                 ),
          //       //                 child: Column(
          //       //                   children: [
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                   ],
          //       //                 ),
          //       //               ),
          //       //               Padding(
          //       //                 padding: const EdgeInsets.only(
          //       //                   left: 15.0,
          //       //                 ),
          //       //                 child: Column(
          //       //                   children: [
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     )
          //       //                   ],
          //       //                 ),
          //       //               ),
          //       //               Padding(
          //       //                 padding: const EdgeInsets.only(
          //       //                   left: 15.0,
          //       //                 ),
          //       //                 child: Column(
          //       //                   children: [
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     )
          //       //                   ],
          //       //                 ),
          //       //               ),
          //       //               Padding(
          //       //                 padding: const EdgeInsets.only(
          //       //                   left: 15.0,
          //       //                 ),
          //       //                 child: Column(
          //       //                   children: [
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     )
          //       //                   ],
          //       //                 ),
          //       //               ),
          //       //               Padding(
          //       //                 padding: const EdgeInsets.only(
          //       //                   left: 15.0,
          //       //                 ),
          //       //                 child: Column(
          //       //                   children: [
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     ),
          //       //                     SizedBox(
          //       //                       height: 15,
          //       //                     ),
          //       //                     Container(
          //       //                       color: arrColors[0],
          //       //                       width: 50,
          //       //                       height: 90,
          //       //                       child: Column(children: [
          //       //                         Center(
          //       //                           child: Padding(
          //       //                             padding: const EdgeInsets.only(
          //       //                                 top: 37.0),
          //       //                             child: Text(
          //       //                               "Oops",
          //       //                               style: GoogleFonts.montserrat(
          //       //                                 fontSize: 10.0,
          //       //                                 fontWeight: FontWeight.w700,
          //       //                                 color: Colors.white,
          //       //                               ),
          //       //                             ),
          //       //                           ),
          //       //                         )
          //       //                       ]),
          //       //                     )
          //       //                   ],
          //       //                 ),
          //       //               ),
          //       //             ],
          //       //           )
          //       //         ],
          //       //       ),
          //       //     )
          //       //   ],
          //       // ),
          //     ],
          //   ),
          // ),
        ],
      ),
    ));
  }
}
