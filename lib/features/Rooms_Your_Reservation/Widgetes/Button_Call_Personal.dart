import 'package:flutter/material.dart';

class ButtonCallPersonal extends StatefulWidget {
  const ButtonCallPersonal({super.key});

  @override
  State<ButtonCallPersonal> createState() => _ButtonCallPersonalState();
}

class _ButtonCallPersonalState extends State<ButtonCallPersonal> {
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
                        'assets/images/Personal.png',
                      ),
                    ),
                    const Text(
                      'Связь с персоналом',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const Text(
                  'Если вам нужна какая-либо помощь, или у вас есть что спросить',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                isOpen
                    ? Padding(
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
                              'Позвонить',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
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
