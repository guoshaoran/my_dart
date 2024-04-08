import 'dart:io';

class Spacecraft {
 //类
 String name;
 DateTime? launchDate;
 int? get launchYear => launchDate?.year;

 Spacecraft(this.name, this.launchDate) {
 name = this.name;
 launchDate = this.launchDate;
 }

 Spacecraft.unlaunched(String name) : this(name, null);

 void describe() {
 print('Spacecraft: $name');

 var launchDate = this.launchDate;
 if (launchDate != null) {
 int years = DateTime.now().difference(launchDate).inDays ~/ 365;
 print('Launched: $launchYear ($years years ago)');
 } else {
 print('Unlaunched');
 }
 }
}

enum PlanetType { terrestrial, gas, ice } //枚举

enum Planet {
 mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
 venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
 uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
 neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

 const Planet(
 {required this.planetType, required this.moons, required this.hasRings});

 final PlanetType planetType;
 final int moons;
 final bool hasRings;

 bool get isGiant =>
 planetType == PlanetType.gas || planetType == PlanetType.ice;
}

class Orbiter extends Spacecraft {
 //扩展类
 double altitude;

 Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

mixin Piloted {
 int astronauts = 1;

 void describeCrew() {
  print('Number of astronauts: $astronauts');
 }
}

class PilotedCraft extends Spacecraft with Piloted {
 PilotedCraft(super.name, super.launchDate);
}

abstract class Describable {
 //抽象类
 void describe();

 void describeWithEmphasis() {
 print('=========');
 describe();
 print('=========');
 }
}

void main() {
 print("Hello World!");

 var name = 'Voyager I';
 var year = 1977;
 var antennaDiameter = 3.7;
 var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
 var image = {
 'tags': ['saturn'],
 'url': '//path/to/saturn.jpg'
 };
 print('变量以及控制流程语句：');
 if (year >= 2001) {
 print('21st century');
 } else if (year >= 1901) {
 print('20th century');
 }

 for (final object in flybyObjects) {
 print(object);
 }

 for (int month = 1; month <= 12; month++) {
 print(month);
 }

 while (year < 2016) {
 year += 1;
 }
 print('函数：');
 int fibonacci(int n) {
 if (n == 0 || n == 1) return n;
 return fibonacci(n - 1) + fibonacci(n - 2);
 }

 var result = fibonacci(20);
 print(result);

 print('类：');
 var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
 voyager.describe();

 var voyager3 = Spacecraft.unlaunched('Voyager III');
 voyager3.describe();

 print('枚举：');
 final yourPlanet = Planet.venus;

 if (!yourPlanet.isGiant) {
 print('Your planet is not a "giant planet".');
 }
 print('mixins:');
 var voyagertwo = Spacecraft('Voyager I', DateTime(1977, 9, 5));
 voyagertwo.describe();

 print('异步：');
 const oneSecond = Duration(seconds: 1);

 Future<void> printWithDelay(String message) async {
 await Future.delayed(oneSecond);
 print(message);
 }

 print('异常：');
 Future<void> describeFlybyObjects(List<String> flybyObjects) async {
 try {
 for (final object in flybyObjects) {
 var description = await File('$object.txt').readAsString();
 print(description);
 }
 } on IOException catch (e) {
 print('Could not describe object: $e');
 } finally {
 flybyObjects.clear();
 }
 }
}