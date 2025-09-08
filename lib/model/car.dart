class Car {
  String image;
  int price;
  String brand;
  String model;
  String c02;
  String fuelCons;

  Car(this.image, this.price, this.brand, this.model, this.c02, this.fuelCons);
}

List<Car> carList = [
  Car("assets/images/bentley.png", 120, "Bentley", "3A 9200", "77/km", "5,5L"),
  Car("assets/images/rolls_royce.png", 185, "RR", "3A 9200", "77/km", "5,5L"),

  Car(
    "assets/images/maserati.png",
    100,
    "Maserati",
    "3A 9200",
    "77/km",
    "5,5L",
  ),

  Car(
    "assets/images/cadillac.png",
    200,
    "Cadillac",
    "3A 9200",
    "77/km",
    "5,5L",
  ),

  Car("assets/images/bentley.png", 300, "Maruti", "3A 5500", "77/km", "5L"),

  Car("assets/images/rolls_royce.png", 400, "brand", "model", "77/km", "5,5L"),
];
