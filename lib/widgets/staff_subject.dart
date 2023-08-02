import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffSubject extends StatelessWidget {
  StaffSubject({super.key, required this.subName});

  String subName;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.13,
      width: width * 0.04,
      color: Color.fromRGBO(0, 108, 158, 1),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: Text(
              subName,
              style: GoogleFonts.montserrat(
                fontSize: 10.0,
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
