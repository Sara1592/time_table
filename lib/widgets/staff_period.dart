import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffPeriod extends StatelessWidget {
  StaffPeriod({super.key, required this.staffPer});
  String staffPer;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          bottom: height * 0.09,
          left: width * 0.027,
          top: height * 0.04,
          right: width * 0.027),
      child: Column(
        children: [
          Text(
            staffPer,
            style: GoogleFonts.montserrat(
              fontSize: 10.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )
        ],
      ),
    );
  }
}
