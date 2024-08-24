import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  ListViewHorizontal({super.key});

  final List<String> _additionalCardsText = [
    "Заказать еду в номер",
    "Интересные места города",
    "Полезная информация"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: index == 2
                ? const EdgeInsets.only(right: 0)
                : const EdgeInsets.only(right: 20),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Ink(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 12.3,
                        spreadRadius: 1,
                        color: Color(0x40000000))
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/ListViewImg$index.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      _additionalCardsText[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: _additionalCardsText.length,
      ),
    );
  }
}
