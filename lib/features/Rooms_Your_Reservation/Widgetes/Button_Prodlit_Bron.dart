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
                        'assets/images/ProdlitBron.png',
                      ),
                    ),
                    const Text(
                      'Продлить бронь',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const Text(
                  'Мы всегда рады видеть вас, и предоставлять Вам свои услуги.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                isOpen
                    ? Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 0),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                            child: const Text(
                              'Введите количество дней',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.black),
                                ),
                                child: const Text(
                                  'Оплатить',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
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
      ),
    );
  }
}
