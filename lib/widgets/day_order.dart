import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayNum extends StatelessWidget {
  DayNum({super.key, required this.dayNum});

  String dayNum;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: height * 0.06, left: width * 0.06),
      child: Column(
        children: [
          Text(
            dayNum,
            style: GoogleFonts.montserrat(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 118, 118, 118),
            ),
          )
        ],
      ),
    );
  }
}
