import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_management_web/view/time_table_screen.dart';

import 'controllers/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Time Table',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: MultiProvider(providers: [
          ChangeNotifierProvider(create: (context) => Controller())
        ], child: TimeTableScreen()));
  }
}
