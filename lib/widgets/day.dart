import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Day extends StatelessWidget {
  Day({super.key, required this.day});

  String day;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: height * 0.09, right: width * 0.021, left: width * 0.022),
      child: Column(
        children: [
          Text(
            day,
            style: GoogleFonts.montserrat(
              fontSize: 10.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 246, 245, 245),
            ),
          )
        ],
      ),
    );
  }
}
