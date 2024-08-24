import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/features/Rooms_Your_Reservation/View/YourRoomsScreen.dart';

class CardToManagement extends StatelessWidget {
  const CardToManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 12.3,
            spreadRadius: 1,
            color: Color(0x40000000),
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: ClipOval(
                  child: Container(
                    height: 26,
                    width: 26,
                    color: const Color(0xFF244F8F),
                    child: const Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Image(
                        image: AssetImage("assets/images/Ypr.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                child: AutoSizeText(
                  "Управление номерами",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const AutoSizeText(
            "Вызов уборщицы, связь с персоналом и т.д.",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 1.2),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.black),
                fixedSize: WidgetStatePropertyAll(
                    Size(MediaQuery.of(context).size.width, 35)),
                overlayColor: const WidgetStatePropertyAll(Color(0x27FFFFFF))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const YourRoomsScreen()),
              );
            },
            child: const AutoSizeText(
              "Посмотреть свою бронь",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
