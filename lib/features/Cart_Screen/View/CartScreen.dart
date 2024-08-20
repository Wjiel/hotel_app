import 'package:flutter/material.dart';
import 'package:hotel_app/features/Cart_Screen/Successful_Food.dart';
import 'package:hotel_app/features/Cart_Screen/Widgetes/ItemListView.dart';

class card_screen extends StatefulWidget {
  const card_screen({super.key});

  @override
  State<card_screen> createState() => _card_screenState();
}

class _card_screenState extends State<card_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
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
                "Корзина",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Выбранные блюда",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return item_list_view();
                },
              ),
            ),
            const Divider(
              color: Color(0xFFADADAD),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                "Куда доставить",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: const EdgeInsets.only(bottom: 10, top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  )
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "К оплате",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "204Р",
                  style: TextStyle(
                    color: Color(0xFF244F8F),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 25),
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
                  'Перейти к оплате',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
