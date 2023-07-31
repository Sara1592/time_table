import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


import 'custom_appbar.dart';
import 'day_order.dart';
import 'header.dart';

class TimeTableDashboard extends StatefulWidget {
  const TimeTableDashboard({super.key});

  @override
  State<TimeTableDashboard> createState() => _TimeTableDashboardState();
}

class _TimeTableDashboardState extends State<TimeTableDashboard> {
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
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: CustomAppbar(),
          ),
          Container(
              height: 347,
              color: Colors.white,
              child: const Column(
                children: [
                  Header(),
                  // StaffHorizontList(),
                ],
              )),
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 858,
                      height: 678,
                      color: Color.fromARGB(255, 240, 240, 240),
                      child: DayOrder(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 500,
                      height: 678,
                      color: Color.fromARGB(255, 255, 187, 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 30),
                                      child: Text(
                                        "Day Order",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20.0, top: 30),
                                      child: Text(
                                        "01",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50.0, top: 30),
                                      child: Text(
                                        "02",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50.0, top: 30),
                                      child: Text(
                                        "03",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50.0, top: 30),
                                      child: Text(
                                        "04",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50.0, top: 30),
                                      child: Text(
                                        "05",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 50.0, top: 30),
                                      child: Text(
                                        "06",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.0, top: 20.0),
                                    child: Text(
                                      "Period No",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 40.0, top: 10),
                                    child: Text(
                                      "01",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 40.0, top: 80),
                                    child: Text(
                                      "02",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 40.0, top: 80),
                                    child: Text(
                                      "03",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 40.0, top: 80),
                                    child: Text(
                                      "04",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 40.0, top: 80),
                                    child: Text(
                                      "05",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 40.0,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: arrColors[0],
                                      width: 50,
                                      height: 90,
                                      child: Column(children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 37.0),
                                            child: Text(
                                              "Oops",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
