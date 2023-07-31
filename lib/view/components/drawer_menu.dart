import 'package:flutter/material.dart';
import 'package:student_management_web/constants/constants.dart';

import 'drawe_list_tile.dart';


class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      width: 150,
      child: ListView(
        children: [
          DrawerListTile(title: 'Dash Board', tap: () {}),
          DrawerListTile(title: 'Attendence', tap: () {}),
          DrawerListTile(title: 'Time Table', tap: () {}),
          DrawerListTile(title: 'Staff', tap: () {}),
          DrawerListTile(title: 'Student', tap: () {}),
          DrawerListTile(title: 'Logout', tap: () {}),
        ],
      ),
    );
  }
}
