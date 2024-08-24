import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

AppBar app_Bar = AppBar(
  backgroundColor: Colors.white,
  automaticallyImplyLeading: false,
  flexibleSpace: const Align(
    alignment: Alignment.bottomCenter,
    child: Divider(
      color: Colors.grey,
      height: 2,
      endIndent: 20,
      indent: 20,
    ),
  ),
  titleSpacing: 20,
  title: const AutoSizeText(
    "METROPOLIS",
    style: TextStyle(
        color: Color(0xFF282828), fontSize: 25, fontWeight: FontWeight.w900),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Ink(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x40000000),
                blurRadius: 4,
              ),
            ],
            shape: BoxShape.circle,
          ),
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {},
            child: const Icon(
              Icons.person,
              color: Color(0xFF282828),
              size: 20,
            ),
          ),
        ),
      ),
    ),
  ],
);
