import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/controller.dart';
import 'components/drawer_menu.dart';
import 'components/timetable_content.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      drawer: DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: const SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: TimeTableDashboard(),
          )
        ],
      )),
    );
  }
}
