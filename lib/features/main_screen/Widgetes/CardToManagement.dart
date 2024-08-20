import 'package:flutter/material.dart';
import 'package:hotel_app/features/Rooms_Your_Reservation/View/YourRoomsScreen.dart';

Widget card_to_menegment(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 170,
    padding: const EdgeInsets.all(20),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xFF244F8F),
              radius: 20,
              child: Image.asset(
                'assets/images/Ypr.png',
                scale: 2.5,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Управление номерами",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox.shrink(),
        ),
        const Text(
          "Вызов уборщицы, связь с персоналом и т.д.",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        const Expanded(
          child: SizedBox.shrink(),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const YourRoomsScreen()));
          },
          style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll(Colors.black),
            fixedSize: WidgetStatePropertyAll(
              Size(MediaQuery.of(context).size.width, 30),
            ),
          ),
          child: const Text(
            "Посмотреть бронь",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
