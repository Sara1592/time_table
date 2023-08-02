import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffAllocation extends StatelessWidget {
  StaffAllocation(
      {super.key,
      required this.staffName,
      required this.subName,
      required this.staffId});
  String staffName;
  String subName;
  String staffId;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.01, top: height * 0.02),
      child: Container(
        height: height * 0.10,
        width: width * 0.13,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(9)),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 221, 221, 221),
                blurRadius: 7.0,
              ),
            ]),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(right: width * 0.05, top: height * 0.015),
              child: Text(staffName,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 54, 54, 54)),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.01, top: height * 0.01),
              child: Row(
                children: [
                  Text(
                    subName,
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.046),
                    child: Text(
                      staffId,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
