import 'package:flutter/material.dart';
import 'package:hotel_app/features/Cart_Screen/View/CartScreen.dart';
import 'package:hotel_app/features/Restaurant_Screen/InfoObject.dart';

class food_activity extends StatefulWidget {
  const food_activity({super.key});

  @override
  State<food_activity> createState() => _food_activityState();
}

class _food_activityState extends State<food_activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/Foods/food0.jpg",
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foods[0].NameFood,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Описание",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  "Первосортная вермишель с сочнейшими кусочками жареного мяса.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Состав",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  "Вермишель, говядина, перец черный, соль.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Пищевая ценность (на 100 гр.)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        margin: const EdgeInsets.only(right: 15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              list_view_number[i],
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              list_view_name[i],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(children: [
                  const Text(
                    'Количество',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {
                      print("-1");
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        "-",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("+1");
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const card_screen()),
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
                      'Добавить в корзину',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(
                        Color(0xFFE7E7E7),
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
                      'Вернуться назад',
                      style: TextStyle(
                        color: Color(0xFF434343),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

var list_view_name = ['ккал', 'белки', 'жиры', 'углеводы'];
var list_view_number = ['125', '12', '10', '10'];
