/// Support for doing something awesome.
///
/// More dartdocs go here.
library control;

export 'src/control_base.dart';

// TODO: Export any libraries intended for clients of this package.
void main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  // for (final candidate in candidates) {
  //   candidate.interview();
  // }

// for (final Candidate(:name, :yearsExperience) in candidates) {
//   print('$name has $yearsExperience of experience.');

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3

// while (!isDone()) {
//   doSomething();
// }

  var candidates;
  for (int i = 0; i < candidates.length; i++) {
  var candidate = candidates[i];
  if (candidate.yearsExperience < 5) {
    continue;
  }
  candidate.interview();
}

// if (isRaining()) {
//   you.bringRainCoat();
// } else if (isSnowing()) {
//   you.wearJacket();
// } else {
//   car.putTopDown();
// }



// if (pair case [int x, int y]) {
//   print('Was coordinate array $x,$y');
// } else {
//   throw FormatException('Invalid coordinates.');
// }

// var command = 'OPEN';
// switch (command) {
//   case 'CLOSED':
//     executeClosed();
//   case 'PENDING':
//     executePending();
//   case 'APPROVED':
//     executeApproved();
//   case 'DENIED':
//     executeDenied();
//   case 'OPEN':
//     executeOpen();
//   default:
//     executeUnknown();
// }

// switch (command) {
//   case 'OPEN':
//     executeOpen();
//     continue newCase; // Continues executing at the newCase label.

//   case 'DENIED': // Empty case falls through.
//   case 'CLOSED':
//     executeClosed(); // Runs for both DENIED and CLOSED,

//   newCase:
//   case 'PENDING':
//     executeNowClosed(); // Runs for both OPEN and PENDING.
// }

// var x = switch (y) { ... };

// print(switch (x) { ... });

// return switch (x) { ... };


// sealed class Shape {}

// class Square implements Shape {
//   final double length;
//   Square(this.length);
// }

// class Circle implements Shape {
//   final double radius;
//   Circle(this.radius);
// }

// double calculateArea(Shape shape) => switch (shape) {
//       Square(length: var l) => l * l,
//       Circle(radius: var r) => math.pi * r * r
//     };

// Switch statement:
// switch (something) {
//   case somePattern when some || boolean || expression:
//     //             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
//     body;
// }

// // Switch expression:
// var value = switch (something) {
//   somePattern when some || boolean || expression => body,
//   //               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
// }

// // If-case statement:
// if (something case somePattern when some || boolean || expression) {
//   //                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
//   body;
}

