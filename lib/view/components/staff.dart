// class Staff {
//   final String name;
//   final String department;

//   Staff({required this.name, required this.department});
// }

// final List<Staff> staffList = [
//   Staff(name: 'Mansoor', department: 'Computer Science'),
//   Staff(name: 'Vijay', department: 'Computer Science'),
//   Staff(name: 'Priya', department: 'IT'),
//   Staff(name: 'Rahul', department: 'EEE'),
//   Staff(name: 'Sara', department: 'IT'),
//   Staff(name: 'Bala', department: 'Mech'),
//   Staff(name: 'Kalai', department: 'Mech'),
//   Staff(name: 'Tara', department: 'EEE'),
// ];

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffHorizontList extends StatelessWidget {
  const StaffHorizontList({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * 0.07, top: height * 0.01),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Staff Details",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 175, 175, 175)),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Container(
                      height: height * 0.1,
                      width: width * 0.14,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
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
                                right: width * 0.07, top: height * 0.015),
                            child: const Text(
                              "Mansoor",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.01, top: height * 0.01),
                            child: Row(
                              children: [
                                const Text(
                                  "Opps",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.046),
                                  child: const Text(
                                    "Staff ID : 001",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Container(
                      height: height * 0.1,
                      width: width * 0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
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
                                right: width * 0.07, top: height * 0.015),
                            child: const Text(
                              "Ambrose",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.01, top: height * 0.01),
                            child: Row(
                              children: [
                                const Text(
                                  "Java",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.046),
                                  child: const Text(
                                    "Staff ID : 002",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Container(
                      height: height * 0.1,
                      width: width * 0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
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
                                right: width * 0.06, top: height * 0.015),
                            child: const Text(
                              "Sanjai Balaji",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.01, top: height * 0.01),
                            child: Row(
                              children: [
                                const Text(
                                  "Python",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.046),
                                  child: const Text(
                                    "Staff ID : 003",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Container(
                      height: height * 0.1,
                      width: width * 0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
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
                                right: width * 0.09, top: height * 0.015),
                            child: const Text(
                              "Vijay",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.01, top: height * 0.01),
                            child: Row(
                              children: [
                                const Text(
                                  "Oops",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.046),
                                  child: const Text(
                                    "Staff ID : 004",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Container(
                      height: height * 0.1,
                      width: width * 0.15,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
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
                                right: width * 0.10, top: height * 0.015),
                            child: const Text(
                              "Priya",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.01, top: height * 0.01),
                            child: Row(
                              children: [
                                const Text(
                                  "Oops",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.046),
                                  child: const Text(
                                    "Staff ID : 004",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
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
            ],
          ),
        )
      ],
    
    ));
  
  }
}
