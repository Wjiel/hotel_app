import 'package:auto_size_text/auto_size_text.dart';
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
  return FittedBox(
    fit: BoxFit.scaleDown,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          navigation();
        },
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        child: Ink(
          width: 400,
          padding: const EdgeInsets.all(13),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 12,
                spreadRadius: 1,
                color: Color(0x40000000),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  assetsImage,
                ),
              ),
              const SizedBox(height: 7),
              AutoSizeText(
                nameRoom,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/bed.png',
                    color: const Color(0xFF282828),
                    scale: 2,
                  ),
                  const SizedBox(width: 5),
                  AutoSizeText(
                    infoBed,
                    style: const TextStyle(
                      color: Color(0xFF282828),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Image.asset(
                    'assets/images/wallet.png',
                    color: const Color(0xFF282828),
                    scale: 2,
                  ),
                  const SizedBox(width: 5),
                  AutoSizeText(
                    "$priseР за $dayPrice ночь",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Image.asset(
                    'assets/images/location.png',
                    color: const Color(0xFF282828),
                    scale: 2,
                  ),
                  const SizedBox(width: 5),
                  AutoSizeText(
                    location,
                    style: const TextStyle(
                      color: Color(0xFF282828),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
