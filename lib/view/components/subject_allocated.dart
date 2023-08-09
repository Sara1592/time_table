import 'package:flutter/material.dart';

import '../../widgets/subject.dart';

class SubjectAlocated extends StatefulWidget {
  const SubjectAlocated({super.key});

  @override
  State<SubjectAlocated> createState() => _SubjectAlocatedState();
}

class _SubjectAlocatedState extends State<SubjectAlocated> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var arrColors = [
      Color.fromARGB(255, 0, 108, 158),
      Color.fromARGB(255, 255, 92, 92),
      Color.fromARGB(255, 79, 140, 0),
      Color.fromARGB(255, 28, 152, 138),
      Color.fromARGB(255, 186, 117, 220),
      Color.fromARGB(255, 9, 26, 47),
    ];
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02, left: width * 0.10),
      child: Draggable(
        data: Container(
          child: Subject(colors: arrColors[0], subName: 'Oops'),
        ),
        child: Subject(colors: arrColors[0], subName: 'Oops'),
        feedback:
            Material(child: Subject(subName: 'Oops', colors: arrColors[0])),
        childWhenDragging: Subject(subName: 'Oops', colors: arrColors[0]),
      ),
    );
  }
}
