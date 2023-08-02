import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataScienceSubject extends StatelessWidget {
  DataScienceSubject({super.key, required this.subName, required this.colors});
  Color colors;
  String subName;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.13,
      width: width * 0.07,
      color: colors,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.04, left: width * 0.01),
            child: Text(
              subName,
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
