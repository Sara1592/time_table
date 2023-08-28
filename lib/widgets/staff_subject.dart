import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffSubject extends StatelessWidget {
  StaffSubject({
    super.key,
    required this.subName,
    required this.subName1,
    required this.year,
  });

  String subName;
  String subName1;
  String year;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width * 0.04,
      color: Color.fromRGBO(0, 108, 158, 1),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.04),
            child: Center(
              child: Text(
                subName,
                style: GoogleFonts.montserrat(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Center(
              child: Text(
                subName1,
                style: GoogleFonts.montserrat(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Center(
              child: Text(
                year,
                style: GoogleFonts.montserrat(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StaffSubjectFree extends StatelessWidget {
  StaffSubjectFree({super.key, required this.subName});

  String subName;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width * 0.04,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.065),
            child: Center(
              child: Text(
                subName,
                style: GoogleFonts.montserrat(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF508C00),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
