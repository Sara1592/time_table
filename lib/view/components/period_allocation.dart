import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/datascience.dart';
import '../../widgets/day_order.dart';
import '../../widgets/period_no.dart';
import '../../widgets/subject.dart';

class PeriodAllocation extends StatefulWidget {
  const PeriodAllocation({super.key});

  @override
  State<PeriodAllocation> createState() => _PeriodAllocationState();
}

class _PeriodAllocationState extends State<PeriodAllocation> {
  // Color arrColor = const Color.fromARGB(255, 9, 26, 47);
  List<Widget> oppsdropitem1 = [];
  List<Widget> oppsdropitem = [];
  List<Widget> javadropitem = [];
  List<Widget> pythondropitem = [];
  List<Widget> datasciencedropitem = [];

  @override
  Widget build(BuildContext context) {
    // final showDraggable = arrColor == const Color.fromARGB(255, 9, 26, 47);

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var arrColors = [
      Color.fromRGBO(0, 108, 158, 1),
      Color.fromARGB(255, 255, 92, 92),
      Color.fromARGB(255, 79, 140, 0),
      Color.fromARGB(255, 28, 152, 138),
      Color.fromARGB(255, 186, 117, 220),
      Color.fromARGB(255, 9, 26, 47),
    ];
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.02,
                  top: height * 0.01,
                  bottom: height * 0.03),
              child: Text("Period No",
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 26, 47),
                  )),
            ),
            // DayNum(
            //   dayNum: 'Period No',
            // ),
            PeriodNo(
              perNum: '01',
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04),
              child: PeriodNo(
                perNum: '02',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04),
              child: PeriodNo(
                perNum: '03',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04),
              child: PeriodNo(
                perNum: '04',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04),
              child: PeriodNo(
                perNum: '05',
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.8,
          child: const VerticalDivider(
            color: Color.fromARGB(255, 190, 190, 190),
            thickness: 1,
            indent: 5,
            endIndent: 0,
            width: 20,
          ),
        ),
        SizedBox(
          width: width * 0.009,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            DragTarget<Widget>(
              // onAccept: (data) => setState(() => arrColor = data),
              builder: (context, accepted, rejected) {
                return Container(
                  height: height * 0.13,
                  width: width * 0.07,
                  color: arrColors[5],
                  child: Column(
                    children:
                        oppsdropitem.isEmpty ? [const Text('')] : oppsdropitem,
                  ),
                );
              },
              onWillAccept: (Widget? data) {
                return true;
              },
              onAccept: (Widget data) {
                setState(() {
                  oppsdropitem.add(data);
                });
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.010,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.01,
              width: width * 0.0,
            ),
            Subject(colors: arrColors[1], subName: 'Java'),
            SizedBox(
              height: height * 0.02,
            ),
            DragTarget<Widget>(
              // onAccept: (data) => setState(() => arrColor = data),
              builder: (context, accepted, rejected) {
                return Container(
                  height: height * 0.13,
                  width: width * 0.07,
                  color: arrColors[5],
                  child: Column(
                    children:
                        javadropitem.isEmpty ? [const Text('')] : javadropitem,
                  ),
                );
              },
              onWillAccept: (Widget? data) {
                return true;
              },
              onAccept: (data) {
                setState(() {
                  javadropitem.add(data);
                });
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[1], subName: 'Java'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[1], subName: 'Java'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[1], subName: 'Java'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.010,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.01,
              width: width * 0.0,
            ),
            Subject(colors: arrColors[2], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[2], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[2], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[2], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[2], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.010,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.01,
              width: width * 0.0,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            DragTarget<Widget>(
              // onAccept: (data) => setState(() => arrColor = data),
              builder: (context, accepted, rejected) {
                return Container(
                  height: height * 0.13,
                  width: width * 0.07,
                  color: arrColors[5],
                  child: Column(
                    children: oppsdropitem1.isEmpty
                        ? [const Text('')]
                        : oppsdropitem1,
                  ),
                );
              },
              onWillAccept: (Widget? data) {
                return true;
              },
              onAccept: (Widget data) {
                setState(() {
                  oppsdropitem1.add(data);
                });
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[0], subName: 'Opps'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.010,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.01,
              width: width * 0.0,
            ),
            DataScienceSubject(colors: arrColors[3], subName: 'Data Science'),
            SizedBox(
              height: height * 0.02,
            ),
            DataScienceSubject(colors: arrColors[3], subName: 'Data Science'),
            SizedBox(
              height: height * 0.02,
            ),
            DataScienceSubject(colors: arrColors[3], subName: 'Data Science'),
            SizedBox(
              height: height * 0.02,
            ),
            DataScienceSubject(colors: arrColors[3], subName: 'Data Science'),
            SizedBox(
              height: height * 0.02,
            ),
            DataScienceSubject(colors: arrColors[3], subName: 'Data Science'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          width: width * 0.010,
        ),
        Column(
          children: [
            SizedBox(
              height: height * 0.01,
              width: width * 0.0,
            ),
            Subject(colors: arrColors[4], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
            DragTarget<Widget>(
              // onAccept: (data) => setState(() => arrColor = data),
              builder: (context, accepted, rejected) {
                return Container(
                  height: height * 0.13,
                  width: width * 0.07,
                  color: arrColors[5],
                  child: Column(
                    children: pythondropitem.isEmpty
                        ? [const Text('')]
                        : pythondropitem,
                  ),
                );
              },
              onWillAccept: (Widget? data) {
                return true;
              },
              onAccept: (Widget data) {
                setState(() {
                  pythondropitem.add(data);
                });
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[4], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[4], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
            Subject(colors: arrColors[4], subName: 'Python'),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ],
    );
  }
}
