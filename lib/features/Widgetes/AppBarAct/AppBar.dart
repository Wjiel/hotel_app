import 'package:flutter/material.dart';
import 'package:hotel_app/features/Widgetes/AppBarAct/AppButtons.dart';

AppBar app_Bar = AppBar(
  toolbarHeight: 70,
  backgroundColor: Colors.transparent,
  automaticallyImplyLeading: false,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _titleText,
      _suffix(),
    ],
  ),
  flexibleSpace: _divider(),
);

Text _titleText = const Text(
  'METROPOLIS',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
  ),
);

Widget _suffix() {
  return AppButton(
    icon: Icons.person,
    onTaps: () {
      print(2);
    },
  );
}

Widget _divider() {
  return const Align(
    alignment: Alignment.bottomCenter,
    child: Divider(
      color: Colors.grey,
      height: 2,
      endIndent: 15,
      indent: 15,
    ),
  );
}
