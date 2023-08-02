import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/staff_alloction.dart';
import '../../widgets/subject.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<String> _Department = ['Computer Science', 'IT', 'EEE', 'ECE', 'Mech'];
  String? _selectedVal = "";

  List<String> _Batch = ['2023', '2022', '2021', '2020', '2019'];
  String? _selectedValBat = "";

  List<String> _Year = ['1st', '2nd', '3rd', '4th', '5th'];
  String? _selectedValYear = "";

  List<String> _Class = ['Morning', 'Evening'];
  String? _selectedValClass = "";
  bool _isShow = false;
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Color.fromARGB(255, 0, 108, 158),
      Color.fromARGB(255, 255, 92, 92),
      Color.fromARGB(255, 79, 140, 0),
      Color.fromARGB(255, 28, 152, 138),
      Color.fromARGB(255, 186, 117, 220),
      Color.fromARGB(255, 9, 26, 47),
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Row(
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.07),
                    child: Text(
                      "NO",
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.06),
                      child: TextFormField(
                          cursorColor: const Color.fromARGB(255, 26, 25, 25),
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: "01",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 19))),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.01, bottom: height * 0.01),
                  child: Text("Department Name"),
                ),
                SizedBox(
                  width: width * 0.15,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.01),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "Computer Science",
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      items: _Department.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          )).toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedVal = val as String;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.02, bottom: height * 0.01),
                  child: Text("Batch"),
                ),
                SizedBox(
                  width: width * 0.13,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "2023",
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      items: _Batch.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          )).toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedValBat = val as String;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.02, bottom: height * 0.01),
                  child: Text("Year"),
                ),
                SizedBox(
                  width: width * 0.12,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "1st",
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      items: _Year.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          )).toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedValYear = val as String;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.05, bottom: height * 0.01),
                  child: Text("Class"),
                ),
                SizedBox(
                  width: width * 0.19,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "Morning",
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      items: _Class.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          )).toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedValClass = val as String;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.05, top: height * 0.01),
                  child: SizedBox(
                    width: width * 0.13,
                    height: height * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            _isShow = !_isShow;
                          },
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 9, 26, 47)),
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
                            'Search',
                            style: GoogleFonts.montserrat(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
            child: Visibility(
          visible: _isShow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.03, left: width * 0.07),
                child: Text("Staff Details",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 54, 54, 54)),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.06),
                child: Row(
                  children: [
                    StaffAllocation(
                      staffId: 'Staff Id :001',
                      staffName: 'Mansoor',
                      subName: 'Oops',
                    ),
                    StaffAllocation(
                      staffId: 'Staff Id :002',
                      staffName: 'Ambrose',
                      subName: 'Java',
                    ),
                    StaffAllocation(
                      staffId: 'Staff Id :003',
                      staffName: 'Sanjai Balaji',
                      subName: 'Python',
                    ),
                    StaffAllocation(
                      staffId: 'Staff Id :004',
                      staffName: 'Vijay',
                      subName: 'Oops',
                    ),
                    StaffAllocation(
                      staffId: 'Staff Id :005',
                      staffName: 'Priya',
                      subName: 'Java',
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.02, left: width * 0.10),
                child: Subject(colors: arrColors[0], subName: 'Opps'),
              )
            ],
          ),
        ))
        // SizedBox(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Padding(
        //         padding:
        //             EdgeInsets.only(right: width * 0.83, top: height * 0.02),
        //         child: const Text(
        //           "Staff Details",
        //           style: TextStyle(
        //               fontSize: 12,
        //               color: Color.fromARGB(255, 175, 175, 175)),
        //         ),
        //       ),
        //       Row(
        //         children: [
        //           StaffAllocation(
        //             staffId: 'Staff Id:001',
        //             staffName: 'Mansoor',
        //             subName: 'Opps',
        //           )
        //         ],
        //       )
        //       // Row(
        //       //   children: [
        //       //     Padding(
        //       //       padding: EdgeInsets.only(top: height * 0.01),
        //       //       child: StaffAllocation(
        //       //         staffId: 'Staff:001',
        //       //         subName: 'Opps',
        //       //         staffName: 'Mansoor',
        //       //       ),
        //       //       // child: Container(
        //       //       //   height: height * 0.1,
        //       //       //   width: width * 0.14,
        //       //       //   decoration: const BoxDecoration(
        //       //       //       borderRadius:
        //       //       //           BorderRadius.all(Radius.circular(9)),
        //       //       //       color: Color.fromARGB(255, 255, 255, 255),
        //       //       //       boxShadow: [
        //       //       //         BoxShadow(
        //       //       //           color: Color.fromARGB(255, 221, 221, 221),
        //       //       //           blurRadius: 7.0,
        //       //       //         ),
        //       //       //       ]),
        //       //       //   child: Column(
        //       //       //     children: [
        //       //       //       Padding(
        //       //       //         padding: EdgeInsets.only(
        //       //       //             right: width * 0.07,
        //       //       //             top: height * 0.015),
        //       //       //         child: const Text(
        //       //       //           "Mansoor",
        //       //       //           style: TextStyle(
        //       //       //               fontSize: 19,
        //       //       //               fontWeight: FontWeight.bold),
        //       //       //         ),
        //       //       //       ),
        //       //       //       Padding(
        //       //       //         padding: EdgeInsets.only(
        //       //       //             left: width * 0.01, top: height * 0.01),
        //       //       //         child: Row(
        //       //       //           children: [
        //       //       //             const Text(
        //       //       //               "Opps",
        //       //       //               style: TextStyle(
        //       //       //                   fontSize: 10,
        //       //       //                   fontWeight: FontWeight.w500,
        //       //       //                   color: Colors.grey),
        //       //       //             ),
        //       //       //             Padding(
        //       //       //               padding: EdgeInsets.only(
        //       //       //                   left: width * 0.046),
        //       //       //               child: const Text(
        //       //       //                 "Staff ID : 001",
        //       //       //                 style: TextStyle(
        //       //       //                     fontSize: 10,
        //       //       //                     fontWeight: FontWeight.w500,
        //       //       //                     color: Colors.grey),
        //       //       //               ),
        //       //       //             ),
        //       //       //           ],
        //       //       //         ),
        //       //       //       ),
        //       //       //     ],
        //       //       //   ),

        //       //       // ),
        //       //     ),
        //       //     // SizedBox(
        //       //     //   width: width * 0.01,
        //       //     // ),
        //       //     // Padding(
        //       //     //   padding: EdgeInsets.only(top: height * 0.01),
        //       //     //   child: Container(
        //       //     //     height: height * 0.1,
        //       //     //     width: width * 0.15,
        //       //     //     decoration: const BoxDecoration(
        //       //     //         borderRadius: BorderRadius.all(Radius.circular(9)),
        //       //     //         color: Color.fromARGB(255, 255, 255, 255),
        //       //     //         boxShadow: [
        //       //     //           BoxShadow(
        //       //     //             color: Color.fromARGB(255, 221, 221, 221),
        //       //     //             blurRadius: 7.0,
        //       //     //           ),
        //       //     //         ]),
        //       //     //     child: Column(
        //       //     //       children: [
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               right: width * 0.07, top: height * 0.015),
        //       //     //           child: const Text(
        //       //     //             "Ambrose",
        //       //     //             style: TextStyle(
        //       //     //                 fontSize: 19, fontWeight: FontWeight.bold),
        //       //     //           ),
        //       //     //         ),
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               left: width * 0.01, top: height * 0.01),
        //       //     //           child: Row(
        //       //     //             children: [
        //       //     //               const Text(
        //       //     //                 "Java",
        //       //     //                 style: TextStyle(
        //       //     //                     fontSize: 10,
        //       //     //                     fontWeight: FontWeight.w500,
        //       //     //                     color: Colors.grey),
        //       //     //               ),
        //       //     //               Padding(
        //       //     //                 padding: EdgeInsets.only(left: width * 0.046),
        //       //     //                 child: const Text(
        //       //     //                   "Staff ID : 002",
        //       //     //                   style: TextStyle(
        //       //     //                       fontSize: 10,
        //       //     //                       fontWeight: FontWeight.w500,
        //       //     //                       color: Colors.grey),
        //       //     //                 ),
        //       //     //               ),
        //       //     //             ],
        //       //     //           ),
        //       //     //         )
        //       //     //       ],
        //       //     //     ),
        //       //     //   ),
        //       //     // ),
        //       //     // SizedBox(
        //       //     //   width: width * 0.01,
        //       //     // ),
        //       //     // Padding(
        //       //     //   padding: EdgeInsets.only(top: height * 0.01),
        //       //     //   child: Container(
        //       //     //     height: height * 0.1,
        //       //     //     width: width * 0.15,
        //       //     //     decoration: const BoxDecoration(
        //       //     //         borderRadius: BorderRadius.all(Radius.circular(9)),
        //       //     //         color: Color.fromARGB(255, 255, 255, 255),
        //       //     //         boxShadow: [
        //       //     //           BoxShadow(
        //       //     //             color: Color.fromARGB(255, 221, 221, 221),
        //       //     //             blurRadius: 7.0,
        //       //     //           ),
        //       //     //         ]),
        //       //     //     child: Column(
        //       //     //       children: [
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               right: width * 0.06, top: height * 0.015),
        //       //     //           child: const Text(
        //       //     //             "Sanjai Balaji",
        //       //     //             style: TextStyle(
        //       //     //                 fontSize: 19, fontWeight: FontWeight.bold),
        //       //     //           ),
        //       //     //         ),
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               left: width * 0.01, top: height * 0.01),
        //       //     //           child: Row(
        //       //     //             children: [
        //       //     //               const Text(
        //       //     //                 "Python",
        //       //     //                 style: TextStyle(
        //       //     //                     fontSize: 10,
        //       //     //                     fontWeight: FontWeight.w500,
        //       //     //                     color: Colors.grey),
        //       //     //               ),
        //       //     //               Padding(
        //       //     //                 padding: EdgeInsets.only(left: width * 0.046),
        //       //     //                 child: const Text(
        //       //     //                   "Staff ID : 003",
        //       //     //                   style: TextStyle(
        //       //     //                       fontSize: 10,
        //       //     //                       fontWeight: FontWeight.w500,
        //       //     //                       color: Colors.grey),
        //       //     //                 ),
        //       //     //               ),
        //       //     //             ],
        //       //     //           ),
        //       //     //         )
        //       //     //       ],
        //       //     //     ),
        //       //     //   ),
        //       //     // ),
        //       //     // SizedBox(
        //       //     //   width: width * 0.01,
        //       //     // ),
        //       //     // Padding(
        //       //     //   padding: EdgeInsets.only(top: height * 0.01),
        //       //     //   child: Container(
        //       //     //     height: height * 0.1,
        //       //     //     width: width * 0.15,
        //       //     //     decoration: const BoxDecoration(
        //       //     //         borderRadius: BorderRadius.all(Radius.circular(9)),
        //       //     //         color: Color.fromARGB(255, 255, 255, 255),
        //       //     //         boxShadow: [
        //       //     //           BoxShadow(
        //       //     //             color: Color.fromARGB(255, 221, 221, 221),
        //       //     //             blurRadius: 7.0,
        //       //     //           ),
        //       //     //         ]),
        //       //     //     child: Column(
        //       //     //       children: [
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               right: width * 0.09, top: height * 0.015),
        //       //     //           child: const Text(
        //       //     //             "Vijay",
        //       //     //             style: TextStyle(
        //       //     //                 fontSize: 19, fontWeight: FontWeight.bold),
        //       //     //           ),
        //       //     //         ),
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               left: width * 0.01, top: height * 0.01),
        //       //     //           child: Row(
        //       //     //             children: [
        //       //     //               const Text(
        //       //     //                 "Oops",
        //       //     //                 style: TextStyle(
        //       //     //                     fontSize: 10,
        //       //     //                     fontWeight: FontWeight.w500,
        //       //     //                     color: Colors.grey),
        //       //     //               ),
        //       //     //               Padding(
        //       //     //                 padding: EdgeInsets.only(left: width * 0.046),
        //       //     //                 child: const Text(
        //       //     //                   "Staff ID : 004",
        //       //     //                   style: TextStyle(
        //       //     //                       fontSize: 10,
        //       //     //                       fontWeight: FontWeight.w500,
        //       //     //                       color: Colors.grey),
        //       //     //                 ),
        //       //     //               ),
        //       //     //             ],
        //       //     //           ),
        //       //     //         )
        //       //     //       ],
        //       //     //     ),
        //       //     //   ),
        //       //     // ),
        //       //     // SizedBox(
        //       //     //   width: width * 0.01,
        //       //     // ),
        //       //     // Padding(
        //       //     //   padding: EdgeInsets.only(top: height * 0.01),
        //       //     //   child: Container(
        //       //     //     height: height * 0.1,
        //       //     //     width: width * 0.15,
        //       //     //     decoration: const BoxDecoration(
        //       //     //         borderRadius: BorderRadius.all(Radius.circular(9)),
        //       //     //         color: Color.fromARGB(255, 255, 255, 255),
        //       //     //         boxShadow: [
        //       //     //           BoxShadow(
        //       //     //             color: Color.fromARGB(255, 221, 221, 221),
        //       //     //             blurRadius: 7.0,
        //       //     //           ),
        //       //     //         ]),
        //       //     //     child: Column(
        //       //     //       children: [
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               right: width * 0.10, top: height * 0.015),
        //       //     //           child: const Text(
        //       //     //             "Priya",
        //       //     //             style: TextStyle(
        //       //     //                 fontSize: 19, fontWeight: FontWeight.bold),
        //       //     //           ),
        //       //     //         ),
        //       //     //         Padding(
        //       //     //           padding: EdgeInsets.only(
        //       //     //               left: width * 0.01, top: height * 0.01),
        //       //     //           child: Row(
        //       //     //             children: [
        //       //     //               const Text(
        //       //     //                 "Oops",
        //       //     //                 style: TextStyle(
        //       //     //                     fontSize: 10,
        //       //     //                     fontWeight: FontWeight.w500,
        //       //     //                     color: Colors.grey),
        //       //     //               ),
        //       //     //               Padding(
        //       //     //                 padding: EdgeInsets.only(left: width * 0.046),
        //       //     //                 child: const Text(
        //       //     //                   "Staff ID : 004",
        //       //     //                   style: TextStyle(
        //       //     //                       fontSize: 10,
        //       //     //                       fontWeight: FontWeight.w500,
        //       //     //                       color: Colors.grey),
        //       //     //                 ),
        //       //     //               ),
        //       //     //             ],
        //       //     //           ),
        //       //     //         )
        //       //     //       ],
        //       //     //     ),
        //       //     //   ),
        //       //     // )
        //       //   ],
        //       // ),
        //     ],
        //   ),
        // ),
        // // Row(
        //   children: [
        //     Row(
        //       children: [
        //         Padding(
        //           padding:
        //               EdgeInsets.only(left: width * 0.08, top: height * 0.07),
        //           child: Container(
        //             color: arrColors[0],
        //             width: 90,
        //             height: 90,
        //             child: Column(children: [
        //               Center(
        //                 child: Padding(
        //                   padding: EdgeInsets.only(top: height * 0.05),
        //                   child: Text(
        //                     "Oops",
        //                     style: GoogleFonts.montserrat(
        //                       fontSize: 18.0,
        //                       fontWeight: FontWeight.w700,
        //                       color: Colors.white,
        //                     ),
        //                   ),
        //                 ),
        //               )
        //             ]),
        //           ),
        //         ),
        //       ],
        //     )
        //   ],
        // )
      ],
    );
  }
}
