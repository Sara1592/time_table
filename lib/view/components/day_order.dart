import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DayOrder extends StatefulWidget {
  const DayOrder({super.key});

  @override
  State<DayOrder> createState() => _DayOrderState();
}

class _DayOrderState extends State<DayOrder> {
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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 70.0, top: 30),
                        child: Text(
                          "Day Order",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60.0, top: 30),
                        child: Text(
                          "01",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80.0, top: 30),
                        child: Text(
                          "02",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90.0, top: 30),
                        child: Text(
                          "03",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90.0, top: 30),
                        child: Text(
                          "04",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90.0, top: 30),
                        child: Text(
                          "05",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90.0, top: 30),
                        child: Text(
                          "06",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey,
            ),
            const Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 60.0,
                      ),
                      child: Text(
                        "Period No",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.0),
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
                      padding: EdgeInsets.only(left: 70.0, top: 0),
                      child: Text(
                        "01",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 70),
                      child: Text(
                        "02",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 70),
                      child: Text(
                        "03",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 70),
                      child: Text(
                        "04",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0, top: 70),
                      child: Text(
                        "05",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
                VerticalDivider(
                  width: 10,
                  thickness: 1,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 80.0,
                  ),
                  child: Column(
                    children: [
                      Container(
                        color: arrColors[0],
                        width: 90,
                        height: 90,
                        child: Column(children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 37.0),
                              child: Text(
                                "Oops",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: arrColors[0],
                        width: 90,
                        height: 90,
                        child: Column(children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 37.0),
                              child: Text(
                                "Oops",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: arrColors[0],
                        width: 90,
                        height: 90,
                        child: Column(children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 37.0),
                              child: Text(
                                "Oops",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: arrColors[5],
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: arrColors[0],
                        width: 90,
                        height: 90,
                        child: Column(children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 37.0),
                              child: Text(
                                "Oops",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18.0,
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
                SizedBox(width: 13),
                Column(
                  children: [
                    Container(
                      color: arrColors[1],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Java",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[5],
                      width: 90,
                      height: 90,
                      // child: Column(children: [
                      //   Center(
                      //     child: Padding(
                      //       padding:
                      //           const EdgeInsets.only(top: 37.0),
                      //       child: Text(
                      //         "Oops",
                      //         style: GoogleFonts.montserrat(
                      //           fontSize: 18.0,
                      //           fontWeight: FontWeight.w700,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ),
                      //   )
                      // ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[1],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Java",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[1],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Java",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[1],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Java",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
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
                const SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      color: arrColors[2],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[2],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[2],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Phython",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[2],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[2],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
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
                const SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      color: arrColors[0],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Oops",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[0],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Oops",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[5],
                      width: 90,
                      height: 90,
                      //   child: Column(children: [
                      //     Center(
                      //       child: Padding(
                      //         padding:
                      //             const EdgeInsets.only(top: 37.0),
                      //         child: Text(
                      //           "Phython",
                      //           style: GoogleFonts.montserrat(
                      //             fontSize: 18.0,
                      //             fontWeight: FontWeight.w700,
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //       ),
                      //     )
                      //   ]),
                      //
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[0],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Oops",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[0],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Text(
                              "Oops",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
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
                const SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      color: arrColors[3],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Data Science",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[3],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Data Science",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[3],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Data Science",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[3],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Data Science",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[3],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Data Science",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
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
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      color: arrColors[4],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[5],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        // Center(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(
                        //         top: 27.0, left: 10),
                        //     child: Text(
                        //       "Data Science",
                        //       style: GoogleFonts.montserrat(
                        //         fontSize: 18.0,
                        //         fontWeight: FontWeight.w700,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[4],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 37.0,
                            ),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[4],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: arrColors[4],
                      width: 90,
                      height: 90,
                      child: Column(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 10),
                            child: Text(
                              "Python",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.0,
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
