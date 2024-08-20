import 'package:flutter/material.dart';
import 'package:hotel_app/features/main_screen/Widgetes/CardToManagement.dart';
import 'package:hotel_app/features/main_screen/Widgetes/CardToNextWid.dart';
import 'package:hotel_app/features/main_screen/Widgetes/ListViewWidget.dart';

class body_main_activity extends StatefulWidget {
  const body_main_activity({super.key});

  @override
  State<body_main_activity> createState() => _body_main_activityState();
}

class _body_main_activityState extends State<body_main_activity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/hello.png',
            scale: 1.2,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Добрый день,',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 35,
            ),
          ),
          RichText(
            textDirection: TextDirection.ltr,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(
                  text: "Анатолий",
                  style: TextStyle(
                    color: Color(0xFF244F8F),
                  ),
                ),
                TextSpan(
                  text: "!",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          CardToNext(context),
          List_View(context),
          const SizedBox(
            height: 20,
          ),
          card_to_menegment(context),
        ],
      ),
    );
  }
}
