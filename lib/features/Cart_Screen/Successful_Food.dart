import 'package:flutter/material.dart';
import 'package:hotel_app/features/main_screen/MainScreen.dart';

class successful_food extends StatefulWidget {
  const successful_food({super.key});

  @override
  State<successful_food> createState() => _successful_foodState();
}

class _successful_foodState extends State<successful_food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Succesful.png',
              scale: 1.5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Заказ успешно создан!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFFA42121),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.report_problem_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const Text(
                        'Возникли проблемы?',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Если Вы не получили заказ в течении 30 минут - подойдите к админестратору или свяжитесь с персоналом в меню управления номерами.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(
                    Colors.black,
                  ),
                  fixedSize: WidgetStatePropertyAll(
                    Size(MediaQuery.of(context).size.width, 70),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      // Change your radius here
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                child: const Text(
                  'Главное меню',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
