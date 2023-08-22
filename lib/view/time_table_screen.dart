// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/controller.dart';
import 'components/drawer_menu.dart';
import 'components/timetable_content.dart';

class TimeTableScreen extends StatelessWidget {
  List? timeTable;
  TimeTableScreen({
    Key? key,
    required this.timeTable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      drawer: DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: TimeTableDashboard(timeTable: timeTable),
    );
  }
}
