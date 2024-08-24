import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/features/selected_foods_screen/Widgetes/ItemListView.dart';
import 'package:hotel_app/features/selected_foods_screen/successful_pay.dart';

class SelectedFoodsScreen extends StatelessWidget {
  const SelectedFoodsScreen({super.key});

  final int _itemCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(26),
                    ),
                  ),
                ),
                shadowColor: WidgetStatePropertyAll(Colors.black),
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                elevation: WidgetStatePropertyAll(12.3),
                padding: WidgetStatePropertyAll(EdgeInsets.only(right: 10)),
                fixedSize: WidgetStatePropertyAll(Size(107, 38)),
                textStyle: WidgetStatePropertyAll(TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
                foregroundColor: WidgetStatePropertyAll(Colors.black),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chevron_left,
                  ),
                  AutoSizeText(
                    "Корзина",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AutoSizeText(
            "Выбранные блюда",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: _itemCount > 6
                  ? (_itemCount * 70).toDouble()
                  : MediaQuery.of(context).size.height * 0.53,
              width: 390,
              child: ListView.builder(
                clipBehavior: Clip.none,
                itemCount: _itemCount,
                itemExtent: 65,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return const ItemListView();
                },
              ),
            ),
          ),
          const Divider(
            color: Color(0xFFADADAD),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: AutoSizeText(
              "Куда доставить",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 44,
            margin: const EdgeInsets.only(bottom: 10, top: 20),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(13),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 12.3,
                  spreadRadius: 1,
                  color: Color(0x40000000),
                )
              ],
            ),
            alignment: Alignment.centerLeft,
            child: const AutoSizeText(
              "Нажмите для выбора",
              style: TextStyle(
                color: Color(0xFFB3B3B3),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                "К оплате",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              AutoSizeText.rich(
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                TextSpan(
                  children: [
                    TextSpan(
                      text: "204",
                      style: TextStyle(color: Color(0xFF244F8F)),
                    ),
                    TextSpan(
                      text: "₽",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const successful_food()),
                );
              },
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Colors.black,
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
                'Перейти к оплате',
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
