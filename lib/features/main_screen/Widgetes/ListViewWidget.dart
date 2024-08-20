import 'package:flutter/material.dart';

Widget List_View(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 160,
    child: ListView.builder(
        itemCount: 3,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _item_list_view(index);
        }),
  );
}

Widget _item_list_view(int index) {
  return Container(
    height: double.infinity,
    margin: index == 2
        ? const EdgeInsets.only(right: 0)
        : const EdgeInsets.only(right: 20),
    padding: const EdgeInsets.all(10),
    width: 170,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/ListViewImg$index.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          _name_List_item[index],
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ),
      ],
    ),
  );
}

var _name_List_item = [
  'Заказать еду в номер',
  'Интересные места города',
  'Полезная информация'
];
