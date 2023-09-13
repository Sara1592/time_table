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
  Map<String, dynamic>? toUpdate;

  Header({
    required this.toUpdate,
    super.key,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<Color>? _containerColor;
  List<Color>? _textColor;
  int _lastClickedIndex = -1;

  void _changeColorOnTap(int index) {
    setState(() {
      if (_lastClickedIndex != -1) {
        _containerColor![_lastClickedIndex] = Colors.white;
        _textColor![_lastClickedIndex] = Color(0xFF363636);
      }

      _containerColor![index] = Color(0xFF006C9E);
      _textColor![index] = Colors.white;
      _lastClickedIndex = index;
    });
  }

  // bool _isSearchButtonEnabled = false;

  void _updateSearchButtonState() {
    setState(() {
      var cubit = context.read<TimetableAdminCubit>();
      cubit.isSearchButtonEnabled = cubit.selectedVal != null &&
          cubit.selectedValBat != null &&
          cubit.selectedValYear != null &&
          cubit.selectedValClass != null;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetch();
    _containerColor = List.generate(5, (index) => Colors.white);
    _textColor = List.generate(5, (index) => Colors.black);
  }

  List _Department = [];
  // int? _selectedVal;
  fetch() async {
    var cubit = context.read<TimetableAdminCubit>();
    cubit.selectedVal = null;
    await cubit.deptInitial();
    _Department = cubit.deptList;
  }

  List _Batch = [];
  // int? _selectedValBat;

  List _Year = [];
  // int? _selectedValYear;

  List _Class = [];
  // int? _selectedValClass;

  fetchDeptBatch(val) async {
    var cubit = context.read<TimetableAdminCubit>();
    cubit.selectedValBat = null;
    cubit.selectedValYear = null;
    cubit.selectedValClass = null;

    // context.read<TimetableAdminCubit>().deptClassTimeTableList = [];
    await cubit.fetchDeptBatchList(val);
    _Batch = cubit.deptBatchList;
    _Year = _Batch;
    _Class = _Batch;
  }

  static List staffdata = [];
  List staffSub = [];
  fetchDeptStaffList(val) async {
    var cubit = context.read<TimetableAdminCubit>();
    await cubit.getDeptStaffList(val);
    var staffdata1 = cubit.deptStaffList;
    staffdata = staffdata1;
    // print(staffdata);
    // staffdata = staffdata1[0];
    // staffSub = staffdata1[0];

    // print(staffdata1);
    // print("Le ${staffdata.length}");
  }

  List deptStaffSub = [];
  bool isTrue = false;
  fetchDeptStaffSubList(val) async {
    var cubit = context.read<TimetableAdminCubit>();
    await cubit.getDeptStaffSubList(staffdata[val]['user_id']);
    var list = cubit.deptStaffSubList;
    deptStaffSub = list.map((e) => e['subject_detail']).toList();
    // print(deptStaffSub);
  }

  var dept_ID;
  var class_ID;
  var batch_ID;

  // bool _isShow = false;
  bool _isoopsShow = false;
  bool _isJavaShow = false;
  bool _isJavaShow1 = false;
  bool _isPythonShow = false;
  bool _isoopsShow1 = false;

  final formKey = GlobalKey<FormState>();
  String selectedVal = '';

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
    var toUpdateDetails = widget.toUpdate == null ? "" : widget.toUpdate;
    // print("ToUpdate ${widget.toUpdate.isUndefinedOrNull ? "" : toUpdateDetails![""]}");
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
                    height: height * 0.06,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.00),
                      child: DropdownButtonFormField(
                        value: context.read<TimetableAdminCubit>().selectedVal,
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
                                color: Colors.white, size: 40.0),
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
                        onChanged: (val)async {
                           await fetchDeptBatch(val);
                            dept_ID = val;
                          setState(() {
                            var cubit = context.read<TimetableAdminCubit>();
                            cubit.selectedVal = val as int;
                            
                            // cubit.isShow = true;
                            // cubit.isShow = false;
                            // cubit.deptStaffList.clear();

                            fetchDeptStaffList(1);
                            cubit.isShow = true;
                          
                            // _changeColorOnTap(_lastClickedIndex);

                            _updateSearchButtonState();
                            // print("Dept ID $val");
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
                    height: height * 0.06,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.02),
                      child: DropdownButtonFormField(
                        value:
                            context.read<TimetableAdminCubit>().selectedValBat,
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
                                color: Colors.white, size: 40.0),
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
                              value: e['id'],
                              child: Text(e['batch']),
                            )).toList(),
                        onChanged: (value) {
                          setState(() {
                            var cubit = context.read<TimetableAdminCubit>();
                            cubit.selectedValBat = value as int;
                            // cubit.deptStaffList.clear();
                            batch_ID = value;
                            // print("Batch ID $value");
                            _updateSearchButtonState();
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
                    height: height * 0.06,
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
                                color: Colors.white, size: 40.0),
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
                              value: e['id'],
                              child: Text(e['year']),
                            )).toList(),
                        value:
                            context.read<TimetableAdminCubit>().selectedValYear,
                        onChanged: (val) {
                          setState(() {
                            context
                                .read<TimetableAdminCubit>()
                                .selectedValYear = val as int;
                            _updateSearchButtonState();
                            // print("Year ID $val");
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
                    height: height * 0.06,
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
                                color: Colors.white, size: 40.0),
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
                              value: e['id'],
                              child: Text(e['sessions']),
                            )).toList(),
                        value: context
                            .read<TimetableAdminCubit>()
                            .selectedValClass,
                        onChanged: (val) {
                          setState(() {
                            context
                                .read<TimetableAdminCubit>()
                                .selectedValClass = val as int;
                            _updateSearchButtonState();
                            class_ID = val;
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
                        left: width * 0.05, top: height * 0.030),
                    child: SizedBox(
                      width: width * 0.15,
                      height: height * 0.06,
                      child: ElevatedButton(
                        onPressed: context
                                .read<TimetableAdminCubit>()
                                .isSearchButtonEnabled
                            ? () {
                                setState(
                                  () {
                                    var cubit =
                                        context.read<TimetableAdminCubit>();
                                    // fetchDeptStaffList(dept_ID);
                                    // cubit.isShow = !cubit.isShow;

                                    cubit.fetchDeptClassTimeTableList(1, 1, 1);
                                  },
                                );
                              }
                            : null,
                        // onPressed: () {
                        //   if (formKey.currentState!.validate()) {
                        //     setState(
                        //       () {
                        //         fetchDeptStaffList(dept_ID);
                        //         _isShow = !_isShow;

                        //         context
                        //             .read<TimetableAdminCubit>()
                        //             .fetchDeptClassTimeTableList();
                        //       },
                        //     );
                        //   }
                        // },
                        style: ElevatedButton.styleFrom(
                          primary: context
                                  .read<TimetableAdminCubit>()
                                  .isSearchButtonEnabled
                              ? Color.fromARGB(255, 9, 26, 47)
                              : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        // style: ButtonStyle(
                        //   backgroundColor: MaterialStateProperty.all(
                        //       const Color.fromARGB(255, 9, 26, 47)),
                        //   shape: MaterialStateProperty.all(
                        //     RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(25),
                        //     ),
                        //   ),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Search',
                              style: GoogleFonts.montserrat(
                                  fontSize: 19,
                                  // color:
                                  //     const Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  color: context
                                          .read<TimetableAdminCubit>()
                                          .isSearchButtonEnabled
                                      ? Colors.white
                                      : Colors.black),
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
          visible: context.read<TimetableAdminCubit>().isShow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.005, left: width * 0.09),
                child: Text("Staff Details",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFAFAFAF)),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.09,
                      top: height * 0.01,
                      // right: width * 0.06
                    ),
                    child: SizedBox(
                      height: height * 0.08,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: staffdata.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: GestureDetector(
                                // onTap: _changeColorOnTap,

                                onTap: () {
                                  _changeColorOnTap(index);

                                  fetchDeptStaffSubList(index);
                                  isTrue = !isTrue;
                                  context
                                      .read<TimetableAdminCubit>()
                                      .getDeptStaffWeekTimetable(351);
                                  // print(staffdata[index]['user_id'].toString());
                                  // filterFunc(
                                  //     staffdata[index]['staffid'].toString());
                                },
                                child: Container(
                                  height: height * 0.09,
                                  width: width * 0.13,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9)),
                                      // color: Color.fromARGB(255, 255, 255, 255),
                                      color: _containerColor![index],
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
                                            '${staffdata[index]['register']['firstName'].toString()}',
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  // color: Color.fromARGB(
                                                  //     255, 54, 54, 54)
                                                  color: _textColor![index]),
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: width * 0.01,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                                '${staffdata[index]['register']['sub_name'][0].toString()}',
                                                // overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.w500,
                                                  // color: Color(0xffAFAFAF),
                                                  color: _textColor![index],
                                                )),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: width * 0.039),
                                              child: Text(
                                                  '${staffdata[index]['register']['user_id'].toString()}',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.w500,
                                                    // color: Color(0xffAFAFAF),
                                                    color: _textColor![index],
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
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.06, top: height * 0.01),
                        child: SizedBox(
                          height: height * 0.12,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: deptStaffSub.length,
                              itemBuilder: (context, int subindex) {
                                // cCode.add(deptStaffSub[subindex]['color_code']);
                                // print(cCode.runtimeType);
                                return InkWell(
                                  onTap: () {
                                    // print("Tile ${deptStaffSub[subindex]}");
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: height * 0.01,
                                      left: width * 0.04,
                                    ),
                                    child: Draggable(
                                      data: deptStaffSub[subindex],
                                      feedback: Material(
                                        child: Container(
                                          height: height * 0.13,
                                          width: width * 0.07,
                                          color: Color(int.parse(
                                              deptStaffSub[subindex]
                                                  ['color_code'])),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.05,
                                                left: width * 0.01),
                                            child: Text(
                                              deptStaffSub[subindex]['sub_name']
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
                                        height: height * 0.13,
                                        width: width * 0.07,
                                        color: Color(int.parse(
                                            deptStaffSub[subindex]
                                                ['color_code'])),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              // top: height * 0.05,
                                              // left: width * 0.01
                                              ),
                                          child: Center(
                                            child: Text(
                                              deptStaffSub[subindex]['sub_name']
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
                                      child: Container(
                                        height: height * 0.15,
                                        width: width * 0.07,
                                        color: Color(int.parse(
                                            deptStaffSub[subindex]
                                                ['color_code'])),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              // top: height * 0.010,
                                              // left: width * 0.013
                                              ),
                                          child: Center(
                                            child: Text(
                                              deptStaffSub[subindex]['sub_name']
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
                                    ),
                                  ),
                                );
                              }),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        )),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.only(left: width * 0.79, top: height * 0.02),
        //       child: SizedBox(
        //         width: width * 0.15,
        //         height: height * 0.07,
        //         child: ElevatedButton(
        //           onPressed: () async {
        //             // await context
        //             //     .read<TimetableAdminCubit>()
        //             //     .updateDeptClassTimetable(
        //             //         1,
        //             //         1,
        //             //         1,
        //             //         351,
        //             //         widget.toUpdate.isUndefinedOrNull
        //             //             ? 1
        //             //             : widget.toUpdate!["dayorder"],
        //             //         widget.toUpdate.isUndefinedOrNull
        //             //             ? 1
        //             //             : widget.toUpdate!["period_no"],
        //             //         widget.toUpdate.isUndefinedOrNull
        //             //             ? 1
        //             //             : widget.toUpdate!["sub_code"]);
        //           // await  context
        //           //       .read<TimetableAdminCubit>()
        //           //       .fetchDeptClassTimeTableList(1,1,1);
        //             // print("DeptID  ${dept_ID}");
        //             // print("BatchID  ${batch_ID}");
        //             // print("ClassID  ${class_ID}");
        //             // print("DayOrder  ${widget.toUpdate!["dayorder"]}");
        //             // print("PeriodNO  ${widget.toUpdate!["period_no"]}");
        //             // print("SubCode  ${widget.toUpdate!["sub_code"]}");
        //           },
        //           style: ButtonStyle(
        //             backgroundColor: MaterialStateProperty.all(
        //                 Color.fromARGB(255, 79, 140, 0)),
        //             shape: MaterialStateProperty.all(
        //               RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(25),
        //               ),
        //             ),
        //           ),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Save Details',
        //                 style: GoogleFonts.montserrat(
        //                     fontSize: 17,
        //                     color: const Color.fromARGB(255, 255, 255, 255),
        //                     fontWeight: FontWeight.w700),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
