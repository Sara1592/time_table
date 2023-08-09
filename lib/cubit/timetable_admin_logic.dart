import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../view/time_table_screen.dart';
import 'timetable_admin_cubit.dart';

class TimetableAdminLogic extends StatelessWidget {
  const TimetableAdminLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TimetableAdminCubit, TimetableAdminState>(
        builder: (context, state) {
          return TimeTableScreen();
        },
        listener: (context, state) {
          if (state.status == 'loading') {
            EasyLoading.show(
                status: "Loading", maskType: EasyLoadingMaskType.black);
          } else if (state.status == 'error') {
            EasyLoading.dismiss();
          } else if (state.status == 'loaded') {
            EasyLoading.dismiss();
          }
        },
      ),
    );
  }
}
