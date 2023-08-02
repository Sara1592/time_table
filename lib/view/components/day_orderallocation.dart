import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/day_order.dart';

class DayOrderAllocation extends StatefulWidget {
  const DayOrderAllocation({super.key});

  @override
  State<DayOrderAllocation> createState() => _DayOrderAllocationState();
}

class _DayOrderAllocationState extends State<DayOrderAllocation> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.02,
                top: height * 0.03,
              ),
              child: Text("Day Order",
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 26, 47),
                  )),
            ),
            DayNum(
              dayNum: '01',
            ),
            DayNum(
              dayNum: '02',
            ),
            DayNum(
              dayNum: '03',
            ),
            DayNum(
              dayNum: '04',
            ),
            DayNum(
              dayNum: '05',
            ),
            DayNum(
              dayNum: '06',
            ),
          ],
        ),
        const Divider(
          color: Color.fromARGB(255, 190, 190, 190),
          thickness: 1,
          height: 4,
        )
      ],
    );
  
  }
}
