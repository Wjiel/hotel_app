import 'package:flutter/material.dart';
import 'package:hotel_app/features/Widgetes/AppBarAct/AppBar.dart';
import 'package:hotel_app/features/Widgetes/BottomBarAct/ButtomBar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void update_current_body() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: app_Bar,
      bottomNavigationBar: CustomBottomNavigation(
        Update: update_current_body,
      ),
      body: CurrentPage(),
    );
  }
}
