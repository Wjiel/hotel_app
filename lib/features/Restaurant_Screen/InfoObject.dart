List<InfoCardFood> foods = [
  InfoCardFood(
    AssetsImage: "assets/images/Foods/food0.jpg",
    NameFood: "Вермишель с мясом",
    Price: 60,
  ),
  InfoCardFood(
    AssetsImage: "assets/images/Foods/food1.jpg",
    NameFood: "Картошка на гриле",
    Price: 72,
  ),
  InfoCardFood(
    AssetsImage: "assets/images/Foods/food2.jpg",
    NameFood: "Вермишель с мясом",
    Price: 60,
  ),
  InfoCardFood(
    AssetsImage: "assets/images/Foods/food3.jpg",
    NameFood: "Картошка на гриле",
    Price: 72,
  )
];

class InfoCardFood {
  InfoCardFood({
    required this.AssetsImage,
    required this.NameFood,
    required this.Price,
  });

  int Price = 0;
  String AssetsImage = "";
  String NameFood = "";
  String Description = "";
  String Structure = "";
}
