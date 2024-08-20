import 'package:flutter/material.dart';

Widget Card_Room(
  String assetsImage,
  String nameRoom,
  String infoBed,
  int prise,
  int dayPrice,
  String location,
  BuildContext context,
  Function navigation,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: GestureDetector(
      onTap: () {
        navigation();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              margin: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Image.asset(assetsImage),
            ),
            Text(
              nameRoom,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/bed.png',
                  color: Colors.black,
                  scale: 1.5,
                ),
                const SizedBox(width: 5),
                Text(
                  infoBed,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox.shrink()),
            Row(
              children: [
                Image.asset(
                  'assets/images/wallet.png',
                  color: Colors.black,
                  scale: 1.5,
                ),
                const SizedBox(width: 5),
                Text(
                  "$priseР за $dayPrice ночь",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox.shrink()),
            Row(
              children: [
                Image.asset(
                  'assets/images/location.png',
                  color: Colors.black,
                  scale: 1.5,
                ),
                const SizedBox(width: 5),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
