import 'package:flutter/material.dart';
import 'package:hotel_app/features/Booking_List_Screen/Widgetes/RoomCard.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  child: ElevatedButton.icon(
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
                      "1 этаж №16",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
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
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(
                      Color(0xFFA42121),
                    ),
                    fixedSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width, 70),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        // Change your radius here
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Отменить бронь',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
