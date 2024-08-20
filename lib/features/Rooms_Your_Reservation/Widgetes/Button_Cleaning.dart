import 'package:flutter/material.dart';

class Button_Cleaning extends StatefulWidget {
  const Button_Cleaning({super.key});

  @override
  State<Button_Cleaning> createState() => _Button_CleaningState();
}

class _Button_CleaningState extends State<Button_Cleaning> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
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
                blurRadius: 3,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        color: Color(0xFF244F8F),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/Cleaning.png',
                      ),
                    ),
                    const Text(
                      'Параметры уборки',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const Text(
                  'Укажите, можно ли у вас убраться или вызовите уборщицу',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                isOpen
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                            child: Row(
                              children: [
                                Radio(
                                  value: true,
                                  groupValue: const [],
                                  onChanged: (dsa) {},
                                ),
                                const Text(
                                  'Доступен для уборки',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                              children: [
                                Radio(
                                  value: true,
                                  groupValue: const [],
                                  onChanged: (dsa) {},
                                ),
                                const Text(
                                  'Не доступен для уборки',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                              children: [
                                Radio(
                                  value: true,
                                  groupValue: const [],
                                  onChanged: (dsa) {},
                                ),
                                const Text(
                                  'Требуется уборка',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
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
      ),
    );
  }
}
