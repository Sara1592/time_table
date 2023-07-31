import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectGrid extends StatefulWidget {
  const SubjectGrid({super.key});

  @override
  State<SubjectGrid> createState() => _SubjectGridState();
}

class _SubjectGridState extends State<SubjectGrid> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Color.fromARGB(255, 0, 108, 158),
      Color.fromARGB(255, 255, 92, 92),
      Color.fromARGB(255, 79, 140, 0),
      Color.fromARGB(255, 28, 152, 138),
      Color.fromARGB(255, 186, 117, 220),
      Color.fromARGB(255, 9, 26, 47),
    ];

    return Scaffold(
        body: Container(
      width: 730,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: arrColors[0],
                child: Column(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 47.0),
                      child: Text(
                        "Oops",
                        style: GoogleFonts.montserrat(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            );
          }),
    ));
  }
}
