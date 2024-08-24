import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/features/Booking_List_Screen/Widgetes/room_card.dart';
import 'package:hotel_app/features/rooms_your_reservation/rooms_category_by_data_screen/View/TheRoomIncludedInTheReservation.dart';

class YourRoomsScreen extends StatefulWidget {
  const YourRoomsScreen({super.key});

  @override
  State<YourRoomsScreen> createState() => _YourRoomsScreenState();
}

class _YourRoomsScreenState extends State<YourRoomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                "Моя бронь",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card_Room(
            "assets/images/Rooms/Room1.jpg",
            "Люкс номер на двоих",
            "1 двухспальная кровать",
            18000,
            5,
            "1 этаж, комната №16",
            context,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TheRoomIncludedInTheReservation(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
