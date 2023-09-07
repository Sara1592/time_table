import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:quickalert/quickalert.dart';

import '../view/time_table_screen.dart';
import 'timetable_admin_cubit.dart';

class TimetableAdminLogic extends StatelessWidget {
  const TimetableAdminLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TimetableAdminCubit, TimetableAdminState>(
        builder: (context, state) {
          // print("List1 ${state.list}");
          // print("List2 ${state.list}");
          // print("ListMessage ${state.dayorder_1}");
          // if (state.status == "dataList") {
          //   return TimeTableScreen(
          //     timeTable: state.list,
          //     staffTimeTable: state.list1,
          //     toUpdate: state.updateDetails,
          //     newList: state.dayorder_1,

          //   );
          // }

          return TimeTableScreen(
            timeTable: state.list,
            staffTimeTable: state.list1,
            toUpdate: state.updateDetails,
            newList: state.dayorder_1,
          );
        },
        listener: (context, state) {
          if (state.status == 'loading') {
            EasyLoading.show(
                status: "Loading", maskType: EasyLoadingMaskType.black);
          } else if (state.status == 'error') {
            EasyLoading.dismiss();
            QuickAlert.show(
              context: context,
              type: QuickAlertType.error,
              title: 'Oops...',
              text: state.errorMessage,
            );
          } else if (state.status == 'loaded1') {
            // print(state.list);
            EasyLoading.dismiss();
          } else if (state.status == 'loaded2') {
            // print(state.list);
            EasyLoading.dismiss();
          } else if (state.status == 'loaded') {
            // print(state.list);
            EasyLoading.dismiss();
          } else if (state.status == 'dataList') {
            // print(state.list);
            EasyLoading.dismiss();
          }
        },
      ),
    );
  }
}
