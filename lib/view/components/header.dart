import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_web/view/components/subject_allocated.dart';
import '../../cubit/timetable_admin_cubit.dart';
import '../../service/api_service.dart';
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
    // context.read<TimetableAdminCubit>().deptInitial();
    // context.read<TimetableAdminCubit>().fetchDeptBatchList('2');

    // print("Hello $_Department");
    fetch();
  }

  fetch() async {
    _selectedVal = null;
    await context.read<TimetableAdminCubit>().deptInitial();
    _Department = context.read<TimetableAdminCubit>().deptList;

    // print("Hello $_Batch");
  }

  fetchDeptBatch(val) async {
    _selectedValBat = null;
    _selectedValYear = null;
    _selectedValClass = null;
    await context.read<TimetableAdminCubit>().fetchDeptBatchList(val);
    _Batch = context.read<TimetableAdminCubit>().deptBatchList;
    _Year = _Batch;
    _Class = _Batch;
    print("Hello $_Batch");
  }

  var dept_ID = '';

  List _Department = [];
  String? _selectedVal= "";

  List _Batch = [];
  String? _selectedValBat = "";

  List _Year = [];
  String? _selectedValYear = "";

  List _Class = [];
  String? _selectedValClass = "";
  bool _isShow = false;
  bool _isoopsShow = false;
  bool _isJavaShow = false;
  bool _isJavaShow1 = false;
  bool _isPythonShow = false;
  bool _isoopsShow1 = false;

  final formKey = GlobalKey<FormState>();
  String selectedVal = '';

  static List<dynamic> staffdata = [
    {
      "staffname": "Mansoor",
      "staffid": "Staff ID :001",
      "staffsub": ["Java", "Oops"]
    },
    {
      "staffname": "Ambrose",
      "staffid": "Staff ID :002",
      "staffsub": ["Java", "Python"]
    },
    {
      "staffname": "Sanjai Balaji",
      "staffid": "Staff ID :003",
      "staffsub": ["Python"]
    },
    {
      "staffname": "Vijay",
      "staffid": "Staff ID :004",
      "staffsub": ["Python", "Oops"]
    },
    {
      "staffname": "Priya",
      "staffid": "Staff ID :005",
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
        Form(
          key: formKey,
          child: Row(
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
                    width: width * 0.15,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.00),
                      child: DropdownButtonFormField(
                        value: _selectedVal,
                        validator: (value) =>
                            value == null ? 'Enter your Department' : null,
                        icon: const Visibility(
                            visible: false, child: Icon(Icons.arrow_downward)),
                        // iconEnabledColor:
                        //     const Color.fromARGB(254, 223, 223, 223),
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
                              value: e["dept_code"],
                              child: Text(e["dept_name"]),
                            )).toList(),
                        onChanged: (val) {
                          setState(() {
                            _selectedVal = val as String;

                            fetchDeptBatch(val);
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
                        value: _selectedValBat,
                        validator: (value) =>
                            value == null ? 'Enter your Batch' : null,
                        icon: const Visibility(
                            visible: false, child: Icon(Icons.arrow_downward)),
                        // iconEnabledColor: Color.fromRGBO(223, 223, 223, 0.996),
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
                              value: e['batch'],
                              child: Text(e['batch']),
                            )).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedValBat = value as String;
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
                    width: width * 0.15,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.02),
                      child: DropdownButtonFormField(
                        validator: (value) =>
                            value == null ? 'Enter your Year' : null,
                        icon: const Visibility(
                            visible: false, child: Icon(Icons.arrow_downward)),
                        // iconEnabledColor:
                        //     const Color.fromARGB(254, 223, 223, 223),
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
                              value: e['year'],
                              child: Text(e['year']),
                            )).toList(),
                        value: _selectedValYear,
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
                        validator: (value) =>
                            value == null ? 'Enter your Section' : null,
                        icon: const Visibility(
                            visible: false, child: Icon(Icons.arrow_downward)),
                        // iconEnabledColor:
                        //     const Color.fromARGB(254, 223, 223, 223),
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
                              value: e['sessions'],
                              child: Text(e['sessions']),
                            )).toList(),
                        value: _selectedValClass,
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
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            setState(
                              () {
                                _isShow = !_isShow;
                              },
                            );
                          }
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
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
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
                    EdgeInsets.only(top: height * 0.01, left: width * 0.09),
                child: Text("Staff Details",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFAFAFAF)),
                    )),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01,
                        top: height * 0.01,
                        right: width * 0.06),
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
                                  height: height * 0.09,
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
                                                '${staffdata[index]['staffsub'][0].toString()}',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xffAFAFAF),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: width * 0.039),
                                              child: Text(
                                                  '${staffdata[index]['staffid'].toString()}',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffAFAFAF),
                                                  )),
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
                        return Padding(
                          padding: EdgeInsets.only(left: width * 0.07),
                          child: SizedBox(
                            height: height * 0.12,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: filterSub[index]['staffsub'].length,
                                itemBuilder: (context, int subindex) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      top: height * 0.01,
                                      left: width * 0.04,
                                    ),
                                    child: Draggable(
                                      data: Container(
                                        height: height * 0.13,
                                        width: width * 0.07,
                                        color: Color(0xFF1C9889),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.05,
                                              left: width * 0.01),
                                          child: Text(
                                            filterSub[index]['staffsub']
                                                    [subindex]
                                                .toString(),
                                            style: GoogleFonts.montserrat(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      feedback: Material(
                                        child: Container(
                                          height: height * 0.15,
                                          width: width * 0.07,
                                          color: Colors.blueAccent,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.05,
                                                left: width * 0.01),
                                            child: Text(
                                              filterSub[index]['staffsub']
                                                      [subindex]
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      childWhenDragging: Container(
                                        height: height * 0.15,
                                        width: width * 0.07,
                                        color: Colors.blueAccent,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.05,
                                              left: width * 0.01),
                                          child: Text(
                                            filterSub[index]['staffsub']
                                                    [subindex]
                                                .toString(),
                                            style: GoogleFonts.montserrat(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.07,
                                        color: Colors.blueAccent,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.05,
                                              left: width * 0.01),
                                          child: Text(
                                            filterSub[index]['staffsub']
                                                    [subindex]
                                                .toString(),
                                            style: GoogleFonts.montserrat(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        );
                      })
                ],
              ),
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
