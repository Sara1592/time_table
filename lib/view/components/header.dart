import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_web/view/components/subject_allocated.dart';
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
  List<String> _Department = ['Computer Science', 'IT', 'EEE', 'ECE', 'Mech'];
  String? _selectedVal = "";

  List<String> _Batch = ['2023', '2022', '2021', '2020', '2019'];
  String? _selectedValBat = "";

  List<String> _Year = ['1st', '2nd', '3rd', '4th', '5th'];
  String? _selectedValYear = "";

  List<String> _Class = ['Morning', 'Evening'];
  String? _selectedValClass = "";
  bool _isShow = false;
  bool _isOppsShow = false;
  bool _isJavaShow = false;
  bool _isJavaShow1 = false;
  bool _isPythonShow = false;
  bool _isOppsShow1 = false;

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
    Widget subject1 = Container(
      height: height * 0.13,
      width: width * 0.07,
      color: arrColors[2],
      child: Text('Opps'),
    );
    Widget subject2 = Container(
      height: height * 0.13,
      width: width * 0.07,
      color: arrColors[0],
      child: Text('Opps'),
    );

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
                    padding: EdgeInsets.only(left: width * 0.05),
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
                      padding: EdgeInsets.only(left: width * 0.04),
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
                      left: width * 0.02, bottom: height * 0.01),
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
                    padding: EdgeInsets.only(left: width * 0.01),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "Select the Field ",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 54, 54, 54),
                            fontWeight: FontWeight.w600),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(254, 223, 223, 223),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            )),
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
                      decoration: const InputDecoration(
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
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(254, 223, 223, 223),
                        filled: true,
                        hintText: "1st",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 54, 54, 54),
                            fontWeight: FontWeight.w700),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3)),
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
                    SizedBox(
                        child: InkWell(
                      child: StaffAllocation(
                        staffId: 'Staff Id :001',
                        staffName: 'Mansoor',
                        subName: 'Oops',
                      ),
                      onTap: () {
                        setState(
                          () {
                            _isOppsShow = !_isOppsShow;
                          },
                        );
                      },
                    )),
                    SizedBox(
                        child: InkWell(
                      child: StaffAllocation(
                        staffId: 'Staff Id :002',
                        staffName: 'Ambrose',
                        subName: 'Java',
                      ),
                      onTap: () {
                        setState(
                          () {
                            _isJavaShow = !_isJavaShow;
                          },
                        );
                      },
                    )),
                    SizedBox(
                        child: InkWell(
                      child: StaffAllocation(
                        staffId: 'Staff Id :003',
                        staffName: 'Sanjai Balaji',
                        subName: 'Python',
                      ),
                      onTap: () {
                        setState(
                          () {
                            _isPythonShow = !_isPythonShow;
                          },
                        );
                      },
                    )),
                    SizedBox(
                        child: InkWell(
                      child: StaffAllocation(
                        staffId: 'Staff Id :004',
                        staffName: 'Vijay',
                        subName: 'Oops',
                      ),
                      onTap: () {
                        setState(
                          () {
                            _isOppsShow1 = !_isOppsShow1;
                          },
                        );
                      },
                    )),
                    SizedBox(
                        child: InkWell(
                      child: StaffAllocation(
                        staffId: 'Staff Id :005',
                        staffName: 'Priya',
                        subName: 'Java',
                      ),
                      onTap: () {
                        setState(
                          () {
                            _isJavaShow1 = !_isJavaShow1;
                          },
                        );
                      },
                    )),
                  ],
                ),
              ),
              Row(
                children: [
                  // SubjectAlocated(),
                  SizedBox(
                      child: Visibility(
                    visible: _isOppsShow,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, left: width * 0.10),
                      child: Draggable(
                        data: Container(
                          child: Subject(colors: arrColors[0], subName: 'Opps'),
                        ),
                        child: Subject(colors: arrColors[0], subName: 'Opps'),
                        feedback: Material(
                            child:
                                Subject(subName: 'Opps', colors: arrColors[0])),
                        childWhenDragging:
                            Subject(subName: 'Opps', colors: arrColors[0]),
                      ),
                    ),
                  )),
                  SizedBox(
                    child: Visibility(
                      visible: _isJavaShow,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.02, left: width * 0.07),
                        child: Draggable(
                          data: Container(
                            child:
                                Subject(colors: arrColors[1], subName: 'Java'),
                          ),
                          child: Subject(colors: arrColors[1], subName: 'Java'),
                          feedback: Material(
                              child: Subject(
                                  subName: 'Java', colors: arrColors[1])),
                          childWhenDragging:
                              Subject(subName: 'Java', colors: arrColors[1]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      child: Visibility(
                    visible: _isPythonShow,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, left: width * 0.07),
                      child: Draggable(
                        data: Container(
                          child:
                              Subject(colors: arrColors[4], subName: 'Python'),
                        ),
                        child: Subject(colors: arrColors[4], subName: 'Python'),
                        feedback: Material(
                            child: Subject(
                                subName: 'Python', colors: arrColors[4])),
                        childWhenDragging:
                            Subject(subName: 'Python', colors: arrColors[4]),
                      ),
                    ),
                  )),
                  SizedBox(
                      child: Visibility(
                    visible: _isOppsShow1,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, left: width * 0.07),
                      child: Draggable(
                        data: Container(
                          child: Subject(colors: arrColors[0], subName: 'Opps'),
                        ),
                        child: Subject(colors: arrColors[0], subName: 'Opps'),
                        feedback: Material(
                            child:
                                Subject(subName: 'Opps', colors: arrColors[0])),
                        childWhenDragging:
                            Subject(subName: 'Opps', colors: arrColors[0]),
                      ),
                    ),
                  )),
                  SizedBox(
                      child: Visibility(
                    visible: _isJavaShow1,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, left: width * 0.07),
                      child: Draggable(
                        data: Container(
                          child: Subject(colors: arrColors[1], subName: 'Java'),
                        ),
                        child: Subject(colors: arrColors[1], subName: 'Java'),
                        feedback: Material(
                            child:
                                Subject(subName: 'Java', colors: arrColors[1])),
                        childWhenDragging:
                            Subject(subName: 'Java', colors: arrColors[1]),
                      ),
                    ),
                  )),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
