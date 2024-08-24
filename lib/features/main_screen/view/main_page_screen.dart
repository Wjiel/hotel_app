import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/features/main_screen/Widgetes/card_to_management.dart';
import 'package:hotel_app/features/main_screen/Widgetes/card_to_next.dart';
import 'package:hotel_app/features/main_screen/Widgetes/list_view.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/hello.png"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const AutoSizeText.rich(
          wrapWords: false,
          style:
              TextStyle(fontWeight: FontWeight.w900, fontSize: 30, height: 1.3),
          TextSpan(
            children: [
              TextSpan(
                text: "Добрый день,\n",
                style: TextStyle(color: Colors.black),
              ),
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
        const SizedBox(
          height: 25,
        ),
        const CardToNext(),
        const SizedBox(
          height: 25,
        ),
        ListViewHorizontal(),
        const SizedBox(
          height: 25,
        ),
        const CardToManagement(),
      ],
    );
  }
}
