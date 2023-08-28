import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/period_no.dart';
import '../../widgets/staff_period.dart';
import '../../widgets/staff_subject.dart';
import '../../widgets/subject.dart';

class StaffPeroidAllocation extends StatefulWidget {
  const StaffPeroidAllocation({super.key});

  @override
  State<StaffPeroidAllocation> createState() => _StaffPeroidAllocationState();
}

class _StaffPeroidAllocationState extends State<StaffPeroidAllocation> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.02,
              ),
              child: Text("Period No",
                  style: GoogleFonts.montserrat(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
            Column(
              children: [
                StaffPeriod(
                  staffPer: '01',
                ),
                StaffPeriod(
                  staffPer: '02',
                ),
                StaffPeriod(
                  staffPer: '03',
                ),
                StaffPeriod(
                  staffPer: '04',
                ),
                StaffPeriod(
                  staffPer: '05',
                ),
              ],
            )
            // DayNum(
            //   dayNum: 'Period No',
            // ),
          ],
        ),
        SizedBox(width: width * 0.004),
        Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubjectFree(subName: 'FREE'),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\n Department   : Computer Science \n\n Year                : 1st year ',
              height: height * 0.17,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 8,
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubjectFree(subName: 'FREE'),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            StaffSubjectFree(subName: 'FREE'),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubjectFree(subName: 'FREE'),
            SizedBox(
              height: height * 0.02,
            ),
            Tooltip(
              message:
                  'Subject            : Oops \n\nDepartment   : Computer Science \n\nYear                  : 1st year ',
              height: height * 0.14,
              preferBelow: false,
              verticalOffset: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(9.0)),
              textStyle: GoogleFonts.montserrat(
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
              child: StaffSubject(
                subName: 'Oops',
                subName1: 'CS',
                year: '2023',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubjectFree(subName: 'FREE'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ],
    );
  }
}
