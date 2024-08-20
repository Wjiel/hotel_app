import 'package:flutter/material.dart';

Widget CardToNext(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 90,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    margin: const EdgeInsets.symmetric(vertical: 30),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
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
        const Text(
          'Забронируйте себе номер сейчас, чтобы не тратить время потом и дать планам сбыться.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            height: 1,
          ),
        ),
        const Expanded(
          child: SizedBox.shrink(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Ink(
            width: 150,
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                print(1);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Продолжить',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xFF244F8F),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xFF244F8F),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}
