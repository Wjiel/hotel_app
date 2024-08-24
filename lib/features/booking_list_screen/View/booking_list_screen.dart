import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/features/Booking_List_Screen/Widgetes/room_card.dart';

class BookingPageScreen extends StatefulWidget {
  const BookingPageScreen({super.key});

  @override
  State<BookingPageScreen> createState() => _BookingPageScreenState();
}

class _BookingPageScreenState extends State<BookingPageScreen> {
  int _currentFloor = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      children: [
        const AutoSizeText(
          "Новая бронь",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              for (int i = 1; i <= 3; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _currentFloor = i;
                      });
                    },
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Ink(
                      width: 78,
                      height: 31,
                      decoration: BoxDecoration(
                        color: _currentFloor == i
                            ? Colors.black
                            : const Color(0xFFD0D0D0),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: AutoSizeText(
                          "$i этаж",
                          style: TextStyle(
                            color: _currentFloor == i
                                ? Colors.white
                                : const Color(0xFF414141),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
        Card_Room(
          "assets/images/Rooms/Room1.jpg",
          "Люкс номер на двоих",
          "1 двухспальная кровать",
          3700,
          1,
          "1 этаж, комната №16",
          context,
          () {},
        ),
        Card_Room(
          "assets/images/Rooms/Room2.jpg",
          "Люкс номер на четверых",
          "1 двухспальная кровать и 2 односпальные кровати",
          4300,
          1,
          "1 этаж, комната №15",
          context,
          () {},
        ),
      ],
    );
  }
}
