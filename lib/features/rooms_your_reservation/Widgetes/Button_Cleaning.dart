import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Button_Cleaning extends StatefulWidget {
  const Button_Cleaning({super.key});

  @override
  State<Button_Cleaning> createState() => _Button_CleaningState();
}

enum SingingCharacter {
  enable,
  notEnable,
  need,
}

class _Button_CleaningState extends State<Button_Cleaning> {
  bool isOpen = false;
  SingingCharacter _character = SingingCharacter.enable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            isOpen = !isOpen;
          });
        },
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        child: Ink(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 12.3,
                spreadRadius: 1,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    padding: const EdgeInsets.all(7),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFF244F8F),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/Cleaning.png',
                    ),
                  ),
                  const AutoSizeText(
                    'Параметры уборки',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const AutoSizeText(
                'Укажите, можно ли у вас убраться или вызовите уборщицу',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 13,
              ),
              isOpen
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                                child: Radio(
                                  value: SingingCharacter.enable,
                                  groupValue: _character,
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value!;
                                    });
                                  },
                                  activeColor: Colors.black,
                                  fillColor:
                                      const WidgetStatePropertyAll(Colors.black),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const AutoSizeText(
                                'Доступен для уборки',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                                child: Radio(
                                  value: SingingCharacter.notEnable,
                                  groupValue: _character,
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value!;
                                    });
                                  },
                                  activeColor: Colors.black,
                                  fillColor:
                                      const WidgetStatePropertyAll(Colors.black),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const AutoSizeText(
                                'Не доступен для уборки',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                                child: Radio(
                                  value: SingingCharacter.need,
                                  groupValue: _character,
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value!;
                                    });
                                  },
                                  activeColor: Colors.black,
                                  fillColor:
                                      const WidgetStatePropertyAll(Colors.black),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const AutoSizeText(
                                'Требуется уборка',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
