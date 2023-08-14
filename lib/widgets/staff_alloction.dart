import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_web/widgets/subject.dart';

class StaffAllocation extends StatefulWidget {
  const StaffAllocation({super.key});

  @override
  State<StaffAllocation> createState() => _StaffAllocationState();
}

class _StaffAllocationState extends State<StaffAllocation> {
  static List<dynamic> staffdata = [
    {
      "staffname": "Mansoor",
      "staffid": "Staff Id: 001",
      "staffsub": ["Java", "Oops"],
    },
    {
      "staffname": "Ambrose",
      "staffid": "Staff Id: 002",
      "staffsub": ["Java", "Python"],
    },
    {
      "staffname": "Sanjai Balaji",
      "staffid": "Staff Id:003",
      "staffsub": ["Python"],
    },
    {
      "staffname": "Vijay",
      "staffid": "Staff Id:004",
      "staffsub": ["Python"],
    },
    {
      "staffname": "Priya",
      "staffid": "Staff Id:005",
      "staffsub": ["Python", "Oops"],
    },
  ];

  final List<dynamic> staffsubdata =
      List.generate(staffdata.length, (index) => ('${staffdata.length}'));

  List filterSub = [];
  filterFun(id) {
    print(id);
    setState(() {
      filterSub =
          staffdata.where((element) => element['staffid'] == id).toList();
    });
    print(filterSub);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var arrColors = [
      Color.fromARGB(255, 0, 108, 158),
      Color.fromARGB(255, 255, 92, 92),
      Color.fromARGB(255, 79, 140, 0),
      Color.fromARGB(255, 28, 152, 138),
      Color.fromARGB(255, 186, 117, 220),
      Color.fromARGB(255, 9, 26, 47),
    ];
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.01, top: height * 0.01),
              child: SizedBox(
                height: height * 0.13,
                width: width * .8,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: staffdata.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: width * 0.01,
                            top: height * 0.01,
                            bottom: height * 0.01),
                        child: GestureDetector(
                          onTap: () {
                            filterFun(staffdata[index]['staffid'].toString());
                          },
                          child: Container(
                            height: height * 0.05,
                            width: width * 0.15,
                            decoration: const BoxDecoration(
                                // color: Colors.amber,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 221, 221, 221),
                                    blurRadius: 7.0,
                                  ),
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        right: width * 0.05,
                                        top: height * 0.015),
                                    child: Text(
                                      '${staffdata[index]['staffname'].toString()}',
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 54, 54, 54))),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width * 0.01, top: height * 0.01),
                                  child: Row(
                                    children: [
                                      Text(
                                          '${staffdata[index]['staffsub'][0].toString()}',
                                          style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 54, 54, 54)))),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: width * 0.06,
                                        ),
                                        child: Text(
                                            staffdata[index]['staffid']
                                                .toString(),
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 54, 54, 54)))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: filterSub.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(filterSub[index]['staffid']),
                ],
              );
            })
      ],
    );
  }
}



// class StaffAllocation extends StatelessWidget {
//   StaffAllocation({
//     super.key,
//     // required this.staffName,
//     // required this.subName,
//     // required this.staffId
//   });
//   // String staffName;
//   // String subName;
//   // String staffId;
//   static List<dynamic> staffdata = [
//     {
//       "staffname": "Mansoor",
//       "staffid": "001",
//       "staffsub": ["Java", "Oops"]
//     },
//     {
//       "staffname": "Ambrose",
//       "staffid": "002",
//       "staffsub": ["Java", "Python"]
//     },
//     {
//       "staffname": "Sanjai Balaji",
//       "staffid": "003",
//       "staffsub": ["Python"]
//     },
//     {
//       "staffname": "Vijay",
//       "staffid": "004",
//       "staffsub": ["Data Science", "Python"]
//     },
//     {
//       "staffname": "Priya",
//       "staffid": "005",
//       "staffsub": ["Python", "Oops"]
//     },
//   ];

//   final List<dynamic> staffsubdata =
//       List.generate(staffdata.length, (index) => ('${staffdata.length}'));

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Padding(
//         padding: EdgeInsets.only(left: width * 0.01, top: height * 0.02),
//         child: SizedBox(
//           width: width * 0.15,
//           height: height * 0.15,
//           child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               shrinkWrap: true,
//               itemCount: staffdata.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   height: height * 0.10,
//                   width: width * 0.13,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(9)),
//                       color: Color.fromARGB(255, 255, 255, 255),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color.fromARGB(255, 221, 221, 221),
//                           blurRadius: 7.0,
//                         ),
//                       ]),
//                   child: Column(
//                     children: [
//                       Padding(
//                           padding: EdgeInsets.only(
//                               right: width * 0.05, top: height * 0.015),
//                           child: Text(
//                             '${staffdata[index]['staffname'][0].toString()}',
//                             style: GoogleFonts.montserrat(
//                                 textStyle: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(255, 54, 54, 54))),
//                           )),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             left: width * 0.01, top: height * 0.01),
//                         child: Row(
//                           children: [
//                             Text(
//                                 '${staffdata[index]['staffsub'][0].toString()}',
//                                 style: GoogleFonts.montserrat(
//                                     textStyle: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                         color:
//                                             Color.fromARGB(255, 54, 54, 54)))),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//         ));
//   }
// }
