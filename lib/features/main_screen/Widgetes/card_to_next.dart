import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CardToNext extends StatelessWidget {
  const CardToNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 14, bottom: 10),
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
          const AutoSizeText(
            "Забронируйте себе номер сейчас, чтобы не тратить время потом и дать планам сбыться.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              height: 1.2,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(bottom: 4, top: 4, left: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AutoSizeText(
                      "Продолжить",
                      style: TextStyle(
                          color: Color(0xFF244F8F),
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Color(0xFF244F8F),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
