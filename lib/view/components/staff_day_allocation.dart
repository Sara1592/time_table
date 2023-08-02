import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/day.dart';

class StaffDayOrder extends StatefulWidget {
  const StaffDayOrder({super.key});

  @override
  State<StaffDayOrder> createState() => _StaffDayOrderState();
}

class _StaffDayOrderState extends State<StaffDayOrder> {
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
                left: width * 0.03,
                top: height * 0.03,
              ),
              child: Text("Day Order",
                  style: GoogleFonts.montserrat(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
            Day(
              day: '01',
            ),
            Day(
              day: '02',
            ),
            Day(
              day: '03',
            ),
            Day(
              day: '04',
            ),
            Day(
              day: '05',
            ),
            Day(
              day: '06',
            ),
          ],
        ),
      ],
    );
  }
}
