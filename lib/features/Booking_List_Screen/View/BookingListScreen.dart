import 'package:flutter/material.dart';
import 'package:hotel_app/features/Booking_List_Screen/Widgetes/RoomCard.dart';

class body_booking_list_activity extends StatefulWidget {
  const body_booking_list_activity({super.key});

  @override
  State<body_booking_list_activity> createState() =>
      _body_booking_list_activityState();
}

class _body_booking_list_activityState
    extends State<body_booking_list_activity> {
  int _currentFloor = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Новая бронь",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                for (int i = 1; i <= 3; i++)
                  Container(
                    width: 100,
                    height: 40,
                    margin: const EdgeInsets.only(right: 10),
                    child: Ink(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: _currentFloor == i
                            ? Colors.black
                            : const Color(0xFFD0D0D0),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _currentFloor = i;
                          });
                        },
                        splashColor: const Color(0xFFD0D0D0),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "$i этаж",
                            style: TextStyle(
                              color: _currentFloor == i
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          const SizedBox(height: 10),
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
      ),
    );
  }
}
