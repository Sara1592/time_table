import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title , required this.tap});

  final String title;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      title: Text(
        title,
        style: TextStyle(color: secondaryColor),
      ),
    );
  }
}
