import 'package:flutter/material.dart';

class Empty_Container extends StatelessWidget {
  const Empty_Container({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width * 0.04,
      color: Color.fromRGBO(0, 108, 158, 1),
    );
  }
}
