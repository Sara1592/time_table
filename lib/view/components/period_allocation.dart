// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/datascience.dart';
import '../../widgets/day_order.dart';
import '../../widgets/period_no.dart';
import '../../widgets/subject.dart';

class PeriodAllocation extends StatefulWidget {
  List? timeTable;
  PeriodAllocation({
    Key? key,
    required this.timeTable,
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dayOrder_1 = widget.timeTable.isNull ? [] : widget.timeTable!;

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
    return Row(
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
                itemCount:widget.timeTable.isUndefinedOrNull ? 5 : dayOrder_1.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      DragTarget(
                        // onAccept: (data) => setState(() => arrColor = data),
                        builder: (context, accepted, rejected) {
                          return InkWell(
                            onTap: () {
                              print(
                                  "Drop ${widget.timeTable.isUndefinedOrNull ? "Data" : dayOrder_1[index]}");
                            },
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
                        onAccept: (data) {
                          print("Before ${dayOrder_1}");
                          int indexToReplace = index;
                          var dat = data;
                          // setState(() {
                          //   dayOrder_1[index] == data;

                          //   dayOrder_1[indexToReplace] = dat;
                          //   print("After1 ${dayOrder_1[2]}");
                          // });
                          dayOrder_1[indexToReplace] = dat;
                          print("After ${dayOrder_1}");
                        },
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                    ],
                  );
                },
              ))
              // SizedBox(
              //   height: height * 0.01,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // DragTarget<Widget>(
              //   // onAccept: (data) => setState(() => arrColor = data),
              //   builder: (context, accepted, rejected) {
              //     return Container(
              //       height: height * 0.13,
              //       width: width * 0.07,
              //       color: arrColors[5],
              //       child: Column(
              //         children:
              //             oopsdropitem.isEmpty ? [const Text('')] : oopsdropitem,
              //       ),
              //     );
              //   },
              //   onWillAccept: (Widget? data) {
              //     return true;
              //   },
              //   onAccept: (Widget data) {
              //     setState(() {
              //       oopsdropitem.add(data);
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      DragTarget<Widget>(
                        // onAccept: (data) => setState(() => arrColor = data),
                        builder: (context, accepted, rejected) {
                          return InkWell(
                            onTap: () {
                              print(index);
                            },
                            child: Container(
                              height: height * 0.13,
                              width: width * 0.07,
                              color: arrColors[5],
                              child: Column(
                                children: dayodertwo.isEmpty
                                    ? [const Text('')]
                                    : dayodertwo,
                              ),
                            ),
                          );
                        },
                        onWillAccept: (Widget? data) {
                          return true;
                        },
                        onAccept: (Widget data) {
                          setState(() {
                            dayodertwo.add(data);
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
              // SizedBox(
              //   height: height * 0.01,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // DragTarget<Widget>(
              //   // onAccept: (data) => setState(() => arrColor = data),
              //   builder: (context, accepted, rejected) {
              //     return Container(
              //       height: height * 0.13,
              //       width: width * 0.07,
              //       color: arrColors[5],
              //       child: Column(
              //         children:
              //             oopsdropitem.isEmpty ? [const Text('')] : oopsdropitem,
              //       ),
              //     );
              //   },
              //   onWillAccept: (Widget? data) {
              //     return true;
              //   },
              //   onAccept: (Widget data) {
              //     setState(() {
              //       oopsdropitem.add(data);
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      DragTarget<Widget>(
                        // onAccept: (data) => setState(() => arrColor = data),
                        builder: (context, accepted, rejected) {
                          return InkWell(
                            onTap: () {
                              print(index);
                            },
                            child: Container(
                              height: height * 0.13,
                              width: width * 0.07,
                              color: arrColors[5],
                              child: Column(
                                children: dayoderthree.isEmpty
                                    ? [const Text('')]
                                    : dayoderthree,
                              ),
                            ),
                          );
                        },
                        onWillAccept: (Widget? data) {
                          return true;
                        },
                        onAccept: (Widget data) {
                          setState(() {
                            dayoderthree.add(data);
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
              // SizedBox(
              //   height: height * 0.01,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // DragTarget<Widget>(
              //   // onAccept: (data) => setState(() => arrColor = data),
              //   builder: (context, accepted, rejected) {
              //     return Container(
              //       height: height * 0.13,
              //       width: width * 0.07,
              //       color: arrColors[5],
              //       child: Column(
              //         children:
              //             oopsdropitem.isEmpty ? [const Text('')] : oopsdropitem,
              //       ),
              //     );
              //   },
              //   onWillAccept: (Widget? data) {
              //     return true;
              //   },
              //   onAccept: (Widget data) {
              //     setState(() {
              //       oopsdropitem.add(data);
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      DragTarget<Widget>(
                        // onAccept: (data) => setState(() => arrColor = data),
                        builder: (context, accepted, rejected) {
                          return InkWell(
                            onTap: () {
                              print(index);
                            },
                            child: Container(
                              height: height * 0.13,
                              width: width * 0.07,
                              color: arrColors[5],
                              child: Column(
                                children: dayoderfour.isEmpty
                                    ? [const Text('')]
                                    : dayoderfour,
                              ),
                            ),
                          );
                        },
                        onWillAccept: (Widget? data) {
                          return true;
                        },
                        onAccept: (Widget data) {
                          setState(() {
                            dayoderfour.add(data);
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
              // SizedBox(
              //   height: height * 0.01,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // DragTarget<Widget>(
              //   // onAccept: (data) => setState(() => arrColor = data),
              //   builder: (context, accepted, rejected) {
              //     return Container(
              //       height: height * 0.13,
              //       width: width * 0.07,
              //       color: arrColors[5],
              //       child: Column(
              //         children:
              //             oopsdropitem.isEmpty ? [const Text('')] : oopsdropitem,
              //       ),
              //     );
              //   },
              //   onWillAccept: (Widget? data) {
              //     return true;
              //   },
              //   onAccept: (Widget data) {
              //     setState(() {
              //       oopsdropitem.add(data);
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      DragTarget<Widget>(
                        // onAccept: (data) => setState(() => arrColor = data),
                        builder: (context, accepted, rejected) {
                          return InkWell(
                            onTap: () {
                              print(index);
                            },
                            child: Container(
                              height: height * 0.13,
                              width: width * 0.07,
                              color: arrColors[5],
                              child: Column(
                                children: dayoderfive.isEmpty
                                    ? [const Text('')]
                                    : dayoderfive,
                              ),
                            ),
                          );
                        },
                        onWillAccept: (Widget? data) {
                          return true;
                        },
                        onAccept: (Widget data) {
                          setState(() {
                            dayoderfive.add(data);
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
              // SizedBox(
              //   height: height * 0.01,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // DragTarget<Widget>(
              //   // onAccept: (data) => setState(() => arrColor = data),
              //   builder: (context, accepted, rejected) {
              //     return Container(
              //       height: height * 0.13,
              //       width: width * 0.07,
              //       color: arrColors[5],
              //       child: Column(
              //         children:
              //             oopsdropitem.isEmpty ? [const Text('')] : oopsdropitem,
              //       ),
              //     );
              //   },
              //   onWillAccept: (Widget? data) {
              //     return true;
              //   },
              //   onAccept: (Widget data) {
              //     setState(() {
              //       oopsdropitem.add(data);
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      DragTarget<Widget>(
                        // onAccept: (data) => setState(() => arrColor = data),
                        builder: (context, accepted, rejected) {
                          return InkWell(
                            onTap: () {
                              dayodersix.isEmpty
                                  ? [const Text('')]
                                  : dayodersix;
                              print(index);
                            },
                            child: Container(
                              height: height * 0.13,
                              width: width * 0.07,
                              color: arrColors[5],
                              child: Column(
                                children: dayodersix.isEmpty
                                    ? [const Text('')]
                                    : dayodersix,
                              ),
                            ),
                          );
                        },
                        onWillAccept: (Widget? data) {
                          return true;
                        },
                        onAccept: (Widget data) {
                          setState(() {
                            dayodersix.add(data);
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
              // SizedBox(
              //   height: height * 0.01,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // DragTarget<Widget>(
              //   // onAccept: (data) => setState(() => arrColor = data),
              //   builder: (context, accepted, rejected) {
              //     return Container(
              //       height: height * 0.13,
              //       width: width * 0.07,
              //       color: arrColors[5],
              //       child: Column(
              //         children:
              //             oopsdropitem.isEmpty ? [const Text('')] : oopsdropitem,
              //       ),
              //     );
              //   },
              //   onWillAccept: (Widget? data) {
              //     return true;
              //   },
              //   onAccept: (Widget data) {
              //     setState(() {
              //       oopsdropitem.add(data);
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: height * 0.02,
              // ),
              // Subject(colors: arrColors[0], subName: 'Oops'),
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
