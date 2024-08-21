import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/main_page.dart';

import 'features/Booking_List_Screen/View/BookingListScreen.dart';
import 'features/Restaurant_Screen/View/RestaurantScreen.dart';

class MainScreenNew extends StatefulWidget {
  const MainScreenNew({super.key});

  @override
  State<MainScreenNew> createState() => _MainScreenNewState();
}

class _MainScreenNewState extends State<MainScreenNew> {

  final Color _selectedColor = const Color(0xFF244F8F);
  final Color _unselectedColor = const Color(0xFF484848);
  int _selectedIndex = 0;

  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: const Align(
            alignment: Alignment.bottomCenter,
            child: Divider(
              color: Colors.grey,
              height: 2,
              endIndent: 20,
              indent: 20,
            ),
          ),
          titleSpacing: 20,
          title: const AutoSizeText("METROPOLIS", style: TextStyle(color: Color(0xFF282828), fontSize: 25, fontWeight: FontWeight.w900),),
          actions: [

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Ink(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        blurRadius: 4,
                      ),
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {

                    },
                    child: const Icon(
                      Icons.person,
                      color: Color(0xFF282828),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [

            MainPage(),
            const body_booking_list_activity(),
            const restaurant_activity()

          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xFFADADAD)))
          ),
          child: BottomNavigationBar(
              selectedLabelStyle: TextStyle(color: _selectedColor, fontWeight: FontWeight.w700, fontSize: 12),
              unselectedLabelStyle: TextStyle(color: _unselectedColor, fontWeight: FontWeight.w400, fontSize: 12),
              backgroundColor: Colors.white,
              selectedItemColor: _selectedColor,
              unselectedItemColor: _unselectedColor,
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                  _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOutCubic);
                });
              },
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Главная',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/imageBron.png',
                    color: _selectedIndex == 1 ? _selectedColor : _unselectedColor,
                  ),
                  label: 'Бронь',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/Restaurant.png',
                    color: _selectedIndex == 2 ? _selectedColor : _unselectedColor,
                  ),
                  label: 'Ресторан',
                ),
              ]
          ),
        ),
      ),
    );
  }
}