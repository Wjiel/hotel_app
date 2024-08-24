import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/features/Booking_List_Screen/Widgetes/room_card.dart';
import 'package:hotel_app/features/Rooms_Your_Reservation/Widgetes/Button_Call_Personal.dart';
import 'package:hotel_app/features/Rooms_Your_Reservation/Widgetes/Button_Prodlit_Bron.dart';

class TheRoomNotIncludedInTheReservation extends StatefulWidget {
  const TheRoomNotIncludedInTheReservation({super.key});

  @override
  State<TheRoomNotIncludedInTheReservation> createState() =>
      _TheRoomNotIncludedInTheReservationState();
}

class _TheRoomNotIncludedInTheReservationState
    extends State<TheRoomNotIncludedInTheReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.white,
                ),
                elevation: WidgetStatePropertyAll(12.3),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(26),
                    ),
                  ),
                ),
              ),
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              label: const AutoSizeText(
                "1 этаж №16",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Card_Room(
            "assets/images/Rooms/Room1.jpg",
            "Люкс номер на двоих",
            "1 двухспальная кровать",
            18000,
            5,
            "1 этаж, комната №16",
            context,
            () {},
          ),
          const ButtonCallPersonal(),
          const ButtonProdlitBron(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                print(1);
              },
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Color(0xFFA42121),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                fixedSize:
                    const WidgetStatePropertyAll(Size(double.infinity, 48)),
              ),
              child: const AutoSizeText(
                'Отменить бронь',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
