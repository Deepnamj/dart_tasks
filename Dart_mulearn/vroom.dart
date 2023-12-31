// Car Properties
class Car {
  String name;
  double price;
  Car(this.name, this.price);
  void changePrice(double newPrice) {
    price = newPrice;
  }
}

// Person
class Person {
  String name;
  List<Car> ownedCars;
  double moneyLeft;
  Person(this.name, this.ownedCars, this.moneyLeft);

  void buyCar(Car car) {
    if (moneyLeft >= car.price) {
      moneyLeft -= car.price;
      ownedCars.add(car);
    } else {
      print("$name does not have enough money to buy ${car.name}");
    }
  }

  void sellCar(Car car) {
    if (ownedCars.contains(car)) {
      moneyLeft += car.price;
      ownedCars.remove(car);
    } else {
      print("$name does not own ${car.name} to sell");
    }
  }
}

void main() {
  var myCar = Car("Alto", 20000);
  var person = Person("Adam", [], 25000);
  person.buyCar(myCar);
  print(
      "${person.name} bought ${myCar.name}, Money left: \$${person.moneyLeft}");
  myCar.changePrice(11000);
  person.sellCar(myCar);
    print("${person.name} sold ${myCar.name}, Money left: \$${person.moneyLeft}");

}