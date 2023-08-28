import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PeriodNo extends StatelessWidget {
  PeriodNo({super.key, required this.perNum});

  String perNum;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        bottom: height * 0.09,
        left: width * 0.05,
      ),
      child: Column(
        children: [
          Text(
            perNum,
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
