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
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.03,
                  top: height * 0.03,
                  bottom: height * 0.03),
              child: Text("Period No",
                  style: GoogleFonts.montserrat(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
            // DayNum(
            //   dayNum: 'Period No',
            // ),
            StaffPeriod(
              staffPer: '01',
            ),
            Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: StaffPeriod(
                  staffPer: '02',
                )),

            Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: StaffPeriod(
                  staffPer: '03',
                )),
            Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: StaffPeriod(
                  staffPer: '04',
                )),
            Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: StaffPeriod(
                  staffPer: '05',
                )),
          ],
        ),
        SizedBox(
          width: width * 0.023,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
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
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
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
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
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
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
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
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
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
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            StaffSubject(subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ],
    );
  }
}
