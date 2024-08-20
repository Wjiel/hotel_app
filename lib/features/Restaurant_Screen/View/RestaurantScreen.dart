import 'package:flutter/material.dart';
import 'package:hotel_app/features/Cart_Screen/View/CartScreen.dart';
import 'package:hotel_app/features/Food_screen/View/FoodScreen.dart';
import 'package:hotel_app/features/Restaurant_Screen/InfoObject.dart';

class restaurant_activity extends StatefulWidget {
  const restaurant_activity({super.key});

  @override
  State<restaurant_activity> createState() => _restaurant_activityState();
}

class _restaurant_activityState extends State<restaurant_activity> {
  final _nameItem = [
    'Второе',
    'Супы',
    'Напитки',
    'Снеки',
  ];

  int _currentInd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ListView.builder(
                itemCount: 4,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: index == 3
                        ? const EdgeInsets.only(right: 0)
                        : const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentInd = index;
                        });
                      },
                      child: Text(
                        _nameItem[index],
                        style: TextStyle(
                          color: _currentInd == index
                              ? Colors.black
                              : const Color(0xFF484848),
                          decoration: _currentInd == index
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                ),
                itemCount: foods.length,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const food_activity()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              foods[index].AssetsImage,
                              scale: 0.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  foods[index].NameFood,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/wallet.png",
                                      scale: 1.5,
                                      color: const Color(0xFF282828),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "${foods[index].Price}/порция",
                                      style: const TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 140,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const card_screen()),
            );
          },
          backgroundColor: Colors.black,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/shop.png',
                  scale: 1.5,
                ),
                const SizedBox(width: 6),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Корзина",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "256Р",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        height: 1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
