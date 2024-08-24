import 'package:flutter/material.dart';
import 'package:hotel_app/features/Widgetes/AppBarAct/AppBar.dart';
import 'package:hotel_app/features/booking_list_screen/View/booking_list_screen.dart';
import 'package:hotel_app/features/main_screen/view/main_page_screen.dart';
import 'package:hotel_app/features/restaurant_screen/View/restaurant_page_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Color _selectedColor = const Color(0xFF244F8F);
  final Color _unselectedColor = const Color(0xFF484848);
  int _selectedIndex = 0;

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: app_Bar,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          MainPageScreen(),
          BookingPageScreen(),
          RestaurantPageScreen()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFADADAD),
            ),
          ),
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
              color: _selectedColor, fontWeight: FontWeight.w700, fontSize: 12),
          unselectedLabelStyle: TextStyle(
              color: _unselectedColor,
              fontWeight: FontWeight.w400,
              fontSize: 12),
          backgroundColor: Colors.white,
          selectedItemColor: _selectedColor,
          unselectedItemColor: _unselectedColor,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(
              () {
                _selectedIndex = index;
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOutCubic);
              },
            );
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
          ],
        ),
      ),
    );
  }
}
