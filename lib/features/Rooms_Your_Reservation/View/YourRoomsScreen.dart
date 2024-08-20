import 'package:flutter/material.dart';
import 'package:hotel_app/features/Booking_List_Screen/Widgetes/RoomCard.dart';
import 'package:hotel_app/features/Rooms_Your_Reservation/Rooms_Category_By_Data/View/TheRoomNotIncludedInTheReservation.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.white,
                ),
                elevation: WidgetStatePropertyAll(5),
              ),
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              label: const Text(
                "Моя бронь",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
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
                    builder: (context) =>
                        const TheRoomNotIncludedInTheReservation(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
