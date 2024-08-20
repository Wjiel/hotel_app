import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final IconData icon;
  final Function onTaps;

  const AppButton({super.key, required this.icon, required this.onTaps});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
        shape: BoxShape.circle,
      ),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {
          widget.onTaps();
        },
        child: Icon(
          widget.icon,
          size: 30,
        ),
      ),
    );
  }
}
