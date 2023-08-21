import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:student_management_web/view/time_table_screen.dart';
import 'controllers/controller.dart';
import 'cubit/timetable_admin_cubit.dart';
import 'cubit/timetable_admin_logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TimetableAdminCubit(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
          title: 'Time Table',
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          builder: EasyLoading.init(),
          home: MultiProvider(providers: [
            ChangeNotifierProvider(create: (context) => Controller())
          ], child: TimetableAdminLogic())),
    );
  }
}
