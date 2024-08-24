import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/features/Restaurant_Screen/InfoObject.dart';
import 'package:hotel_app/features/food_screen/View/food_Screen.dart';
import 'package:hotel_app/features/selected_foods_screen/View/your_foods_screen.dart';

class RestaurantPageScreen extends StatefulWidget {
  const RestaurantPageScreen({super.key});

  @override
  State<RestaurantPageScreen> createState() => _RestaurantPageScreenState();
}

class _RestaurantPageScreenState extends State<RestaurantPageScreen> {
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                    child: AutoSizeText(
                      _nameItem[index],
                      style: TextStyle(
                        color: _currentInd == index
                            ? Colors.black
                            : const Color(0xFF484848),
                        decoration: _currentInd == index
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        fontSize: 25,
                        fontWeight: _currentInd == index
                            ? FontWeight.w900
                            : FontWeight.bold,
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
          SizedBox(
            height: 220 *
                (foods.length /
                        (MediaQuery.of(context).size.width / 200).toInt() +
                    0.5),
            child: GridView.builder(
              clipBehavior: Clip.none,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                mainAxisSpacing: 20,
              ),
              itemCount: foods.length,
              itemBuilder: (BuildContext context, index) {
                return FittedBox(
                  fit: BoxFit.scaleDown,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodScreen()),
                      );
                    },
                    borderRadius: BorderRadius.circular(15),
                    child: Ink(
                      width: 200,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 12.3,
                            spreadRadius: 1,
                            color: Color(0x40000000),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              foods[index].AssetsImage,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  foods[index].NameFood,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
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
                                    AutoSizeText(
                                      "${foods[index].Price}₽/порция",
                                      style: const TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 15,
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 120,
        height: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SelectedFoodsScreen()),
            );
          },
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/shop.png',
                  scale: 2,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AutoSizeText(
                      "Корзина",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          "256₽",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
