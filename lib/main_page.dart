import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  final List<String> _additionalCardsText = ["Заказать еду в номер", "Интересные места города", "Полезная информация"];

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: [

            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/hello.png"))
                ),
              ),
            ),

            const SizedBox(height: 25,),

            const AutoSizeText.rich(
              wrapWords: false,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30, height: 1.3),
              TextSpan(
                  children: [
                    TextSpan(text: "Добрый день,\n", style: TextStyle(color: Colors.black)),
                    TextSpan(text: "Анатолий", style: TextStyle(color: Color(0xFF244F8F))),
                    TextSpan(text: "!", style: TextStyle(color: Colors.black)),
                  ]
              ),
            ),

            const SizedBox(height: 25,),

            Ink(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 14, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [BoxShadow(offset: Offset(0, 4), blurRadius: 12.3, spreadRadius: 1, color: Color(0x40000000))],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const AutoSizeText("Забронируйте себе номер сейчас, чтобы не тратить время потом и дать планам сбыться.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black, height: 1.2),
                  ),

                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {

                      },
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 6, left: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            AutoSizeText("Продолжить", style: TextStyle(color: Color(0xFF244F8F), fontWeight: FontWeight.w700, fontSize: 12),),

                            Icon(Icons.navigate_next, color: Color(0xFF244F8F),size: 18,),

                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 25,),

            SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: index == 2
                        ? const EdgeInsets.only(right: 0)
                        : const EdgeInsets.only(right: 20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {

                      },
                      child: Ink(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [BoxShadow(offset: Offset(0, 4), blurRadius: 12.3, spreadRadius: 1, color: Color(0x40000000))],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/ListViewImg$index.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                            const SizedBox(height: 10,),

                            AutoSizeText(
                              _additionalCardsText[index],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _additionalCardsText.length,
              ),
            ),

            const SizedBox(height: 25,),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [BoxShadow(offset: Offset(0, 4), blurRadius: 12.3, spreadRadius: 1, color: Color(0x40000000))],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: ClipOval(
                          child: Container(
                            height: 26,
                            width: 26,
                            color: const Color(0xFF244F8F),
                            child: const Padding(
                              padding: EdgeInsets.all(7.0),
                              child: Image(image: AssetImage("assets/images/Ypr.png"),),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 8,),
                      
                      const Expanded(
                        child: AutoSizeText("Управление номерами",
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                          ),
                        ),
                      )
                      
                    ],
                  ),

                  const SizedBox(height: 10,),

                  const AutoSizeText("Вызов уборщицы, связь с персоналом и т.д.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black, height: 1.2),),

                  const SizedBox(height: 15,),

                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Colors.black),
                      fixedSize: WidgetStatePropertyAll(Size(MediaQuery.of(context).size.width, 35)),
                      overlayColor: const WidgetStatePropertyAll(Color(0x27FFFFFF))
                    ),
                      onPressed: () {
                        
                      }, 
                      child: const AutoSizeText("Посмотреть свою бронь",
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
