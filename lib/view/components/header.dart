import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_web/view/components/subject_allocated.dart';
import '../../cubit/timetable_admin_cubit.dart';
import '../../widgets/staff_alloction.dart';
import '../../widgets/subject.dart';
import 'custom_appbar.dart';

class Header extends StatefulWidget {
  Header({
    super.key,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    

    print("Hello $_Department");
    fetch();
  }

  fetch() async{
    await context.read<TimetableAdminCubit>().deptInitial();
    _Department = context.read<TimetableAdminCubit>().deptList;
    print("Hello $_Department");
  }

  List<String> _Department = [];
  String? _selectedVal = "";

  List<String> _Batch = ['2023', '2022', '2021', '2020', '2019'];
  String? _selectedValBat = "";

  List<String> _Year = ['1st', '2nd', '3rd', '4th', '5th'];
  String? _selectedValYear = "";

  List<String> _Class = ['Morning', 'Evening'];
  String? _selectedValClass = "";
  bool _isShow = false;
  bool _isoopsShow = false;
  bool _isJavaShow = false;
  bool _isJavaShow1 = false;
  bool _isPythonShow = false;
  bool _isoopsShow1 = false;

  static List<dynamic> staffdata = [
    {
      "staffname": "Mansoor",
      "staffid": "001",
      "staffsub": ["Java", "Oops"]
    },
    {
      "staffname": "Ambrose",
      "staffid": "002",
      "staffsub": ["Java", "Python"]
    },
    {
      "staffname": "Sanjai Balaji",
      "staffid": "003",
      "staffsub": ["Python"]
    },
    {
      "staffname": "Vijay",
      "staffid": "004",
      "staffsub": ["Python", "Oops"]
    },
    {
      "staffname": "Priya",
      "staffid": "005",
      "staffsub": ["Python", "Java"]
    },
  ];

  final List<dynamic> staffsubdata =
      List.generate(staffdata.length, (index) => ('${staffdata.length}'));

  List filterSub = [];
  filterFunc(id) {
    print(id);
    setState(() {
      filterSub =
          staffdata.where((element) => element['staffid'] == id).toList();
    });
    print(filterSub);
  }

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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Text(""),
                ),
                SizedBox(
                  width: width * 0.05,
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.01,
                      ),
                      child: CustomAppbar()),
                )
              ],
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.040),
                    child: Text(
                      "NO",
                      style: GoogleFonts.montserrat(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 175, 175, 175),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.035),
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
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                                color: Color.fromARGB(255, 54, 54, 54),
                              ))),
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
                      left: width * 0.00, bottom: height * 0.01),
                  child: Text(
                    "Department Name",
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 175, 175, 175),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.16,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.00),
                    child: DropdownButtonFormField(
                      iconEnabledColor:
                          const Color.fromARGB(254, 223, 223, 223),
                      decoration: const InputDecoration(
                        suffixIcon: Material(
                          color: Color.fromARGB(255, 9, 26, 47),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          child: Icon(Icons.arrow_drop_down,
                              color: Colors.white, size: 45.0),
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "Department",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 54, 54, 54),
                            fontWeight: FontWeight.w700),
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
                          // context.read<TimetableAdminCubit>().deptBatchList();
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
                  child: Text(
                    "Batch",
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 175, 175, 175),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.13,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: DropdownButtonFormField(
                      iconEnabledColor:
                          const Color.fromARGB(254, 223, 223, 223),
                      decoration: const InputDecoration(
                        suffixIcon: Material(
                          color: Color.fromARGB(255, 9, 26, 47),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          child: Icon(Icons.arrow_drop_down,
                              color: Colors.white, size: 45.0),
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "Batch",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 54, 54, 54),
                            fontWeight: FontWeight.w700),
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
                  child: Text(
                    "Year",
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 175, 175, 175),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.12,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: DropdownButtonFormField(
                      validator: (value) =>
                          value == null ? 'Fill the Section' : null,
                      iconEnabledColor:
                          const Color.fromARGB(254, 223, 223, 223),
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(fontSize: 16.0),
                        suffixIcon: Material(
                          color: Color.fromARGB(255, 9, 26, 47),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          child: Icon(Icons.arrow_drop_down,
                              color: Colors.white, size: 45.0),
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "Year",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 54, 54, 54),
                            fontWeight: FontWeight.w700),
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
                      left: width * 0.03, bottom: height * 0.01),
                  child: Text(
                    "Class",
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 175, 175, 175),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.19,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: DropdownButtonFormField(
                      iconEnabledColor:
                          const Color.fromARGB(254, 223, 223, 223),
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(fontSize: 16.0),
                        suffixIcon: Material(
                          color: Color.fromARGB(255, 9, 26, 47),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          child: Icon(Icons.arrow_drop_down,
                              color: Colors.white, size: 45.0),
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "Section",
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
                    EdgeInsets.only(top: height * 0.03, left: width * 0.09),
                child: Text("Staff Details",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 54, 54, 54)),
                    )),
              ),

              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.01, top: height * 0.01),
                    child: SizedBox(
                      height: height * 0.12,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: staffdata.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: GestureDetector(
                                onTap: () {
                                  filterFunc(
                                      staffdata[index]['staffid'].toString());
                                },
                                child: Container(
                                  height: height * 0.10,
                                  width: width * 0.13,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              255, 221, 221, 221),
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
                                                      255, 54, 54, 54)),
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.01,
                                            top: height * 0.01),
                                        child: Row(
                                          children: [
                                            Text(
                                              '${staffdata[index]['staffid'].toString()}',
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: width * 0.046),
                                              child: Text(
                                                  '${staffdata[index]['staffsub'][0].toString()}'),
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
                  ListView.builder(
                      // scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: filterSub.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Column(
                          children: [
                            // Text(filterSub[index]['staffid']),
                            ListView.builder(
                                // scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: filterSub[index]['staffsub'].length,
                                itemBuilder: (context, int subindex) {
                                  return Text(filterSub[index]['staffsub']
                                          [subindex]
                                      .toString());
                                  // return Subject(
                                  //     subName: (filterSub[index]['staffsub']
                                  //             [subindex]
                                  //         .toString()),
                                  //     colors: arrColors[2]);
                                })
                          ],
                        ));
                      })
                ],
              ),

              // Padding(
              //   padding: EdgeInsets.only(left: width * 0.00),
              //   child: const Row(
              //     children: [
              //       SizedBox(child: StaffAllocation()),
              //     ],
              //   ),
              // ),
              // // Column(
              // //   children: [
              // //     Row(
              // //       children: [
              // //         // SubjectAlocated(),
              // //         SizedBox(
              // //             child: Visibility(
              // //           visible: _isoopsShow,
              // //           child: Padding(
              // //             padding: EdgeInsets.only(
              // //                 top: height * 0.02, left: width * 0.10),
              // //             child: Draggable(
              // //               data:
              // //                   Subject(colors: arrColors[0], subName: 'Oops'),
              // //               feedback: Material(
              // //                   child: Subject(
              // //                       subName: 'Oops', colors: arrColors[0])),
              // //               childWhenDragging:
              // //                   Subject(subName: 'Oops', colors: arrColors[0]),
              // //               child:
              // //                   Subject(colors: arrColors[0], subName: 'Oops'),
              // //             ),
              // //           ),
              // //         )),
              // //         SizedBox(
              // //           child: Visibility(
              // //             visible: _isJavaShow,
              // //             child: Padding(
              // //               padding: EdgeInsets.only(
              // //                   top: height * 0.02, left: width * 0.07),
              // //               child: Draggable(
              // //                 data: Container(
              // //                   child: Subject(
              // //                       colors: arrColors[1], subName: 'Java'),
              // //                 ),
              // //                 feedback: Material(
              // //                     child: Subject(
              // //                         subName: 'Java', colors: arrColors[1])),
              // //                 childWhenDragging: Subject(
              // //                     subName: 'Java', colors: arrColors[1]),
              // //                 child: Subject(
              // //                     colors: arrColors[1], subName: 'Java'),
              // //               ),
              // //             ),
              // //           ),
              // //         ),
              // //         SizedBox(
              // //             child: Visibility(
              // //           visible: _isPythonShow,
              // //           child: Padding(
              // //             padding: EdgeInsets.only(
              // //                 top: height * 0.02, left: width * 0.07),
              // //             child: Draggable(
              // //               data: Subject(
              // //                   colors: arrColors[4], subName: 'Python'),
              // //               child: Subject(
              // //                   colors: arrColors[4], subName: 'Python'),
              // //               feedback: Material(
              // //                   child: Subject(
              // //                       subName: 'Python', colors: arrColors[4])),
              // //               childWhenDragging: Subject(
              // //                   subName: 'Python', colors: arrColors[4]),
              // //             ),
              // //           ),
              // //         )),
              // //         SizedBox(
              // //             child: Visibility(
              // //           visible: _isoopsShow1,
              // //           child: Padding(
              // //             padding: EdgeInsets.only(
              // //                 top: height * 0.02, left: width * 0.07),
              // //             child: Draggable(
              // //               data: Container(
              // //                 child: Subject(
              // //                     colors: arrColors[0], subName: 'Oops'),
              // //               ),
              // //               child:
              // //                   Subject(colors: arrColors[0], subName: 'Oops'),
              // //               feedback: Material(
              // //                   child: Subject(
              // //                       subName: 'Oops', colors: arrColors[0])),
              // //               childWhenDragging:
              // //                   Subject(subName: 'Oops', colors: arrColors[0]),
              // //             ),
              // //           ),
              // //         )),
              // //         SizedBox(
              // //             child: Visibility(
              // //           visible: _isJavaShow1,
              // //           child: Padding(
              // //             padding: EdgeInsets.only(
              // //                 top: height * 0.02, left: width * 0.07),
              // //             child: Draggable(
              // //               data: Container(
              // //                 child: Subject(
              // //                     colors: arrColors[1], subName: 'Java'),
              // //               ),
              // //               child:
              // //                   Subject(colors: arrColors[1], subName: 'Java'),
              // //               feedback: Material(
              // //                   child: Subject(
              // //                       subName: 'Java', colors: arrColors[1])),
              // //               childWhenDragging:
              // //                   Subject(subName: 'Java', colors: arrColors[1]),
              // //             ),
              // //           ),
              // //         )),
              // //       ],
              // //     ),
              // //   ],
              // // )
            ],
          ),
        )),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.73, top: height * 0.02),
              child: SizedBox(
                width: width * 0.13,
                height: height * 0.06,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 79, 140, 0)),
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
    );
  }
}
