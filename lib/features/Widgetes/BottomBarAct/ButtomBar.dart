import 'package:flutter/material.dart';
import 'package:hotel_app/features/Booking_List_Screen/View/BookingListScreen.dart';
import 'package:hotel_app/features/Restaurant_Screen/View/RestaurantScreen.dart';
import 'package:hotel_app/features/main_screen/view/BodyAct.dart';

int currentPageIndex = 0;

Widget CurrentPage() {
  var activiti = [
    const body_main_activity(),
    const body_booking_list_activity(),
    const restaurant_activity()
  ];
  return activiti[currentPageIndex];
}

class CustomBottomNavigation extends StatefulWidget {
  Function Update;

  CustomBottomNavigation({super.key, required this.Update});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  final Color _selected = const Color(0xFF244F8F);
  final Color _unselected = const Color(0xFF484848);

  List<BottomNavigationBarItem> _items() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Главная',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/imageBron.png',
          color: currentPageIndex == 1 ? _selected : _unselected,
        ),
        label: 'Бронь',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/Restaurant.png',
          color: currentPageIndex == 2 ? _selected : _unselected,
        ),
        label: 'Ресторан',
      ),
    ];
  }

  void changePage(int index) {
    setState(() {
      currentPageIndex = index;
    });
    widget.Update();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: _selected,
      unselectedItemColor: _unselected,
      items: _items(),
      currentIndex: currentPageIndex,
      onTap: (index) {
        changePage(index);
      },
    );
  }
}
