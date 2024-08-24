import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ButtonProdlitBron extends StatefulWidget {
  const ButtonProdlitBron({super.key});

  @override
  State<ButtonProdlitBron> createState() => _ButtonProdlitBronState();
}

class _ButtonProdlitBronState extends State<ButtonProdlitBron> {
  bool isOpen = false;
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
                    margin: const EdgeInsets.only(
                      right: 8,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFF244F8F),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/ProdlitBron.png',
                    ),
                  ),
                  const AutoSizeText(
                    'Продлить бронь',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const AutoSizeText(
                'Мы всегда рады видеть вас, и предоставлять Вам свои услуги.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              isOpen
                  ? Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 44,
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 15),
                          margin: const EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 0),
                                blurRadius: 15.2,
                              )
                            ],
                          ),
                          child: const AutoSizeText(
                            'Введите количество дней',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFB3B3B3),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  const WidgetStatePropertyAll(Colors.black),
                              fixedSize: WidgetStatePropertyAll(
                                Size(MediaQuery.of(context).size.width, 44),
                              ),
                              shape: const WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(26),
                                  ),
                                ),
                              ),
                            ),
                            child: const AutoSizeText(
                              'Оплатить',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
