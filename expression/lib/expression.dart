/// Support for doing something awesome.
///
/// More dartdocs go here.
library expression;

export 'src/expression_base.dart';

// TODO: Export any libraries intended for clients of this package.

void main() {
 //变量
 var name = 'Bob';
 Object nametwo = 'Bob';
 String namethree = 'Bob';

 int lineCount;
 bool weLikeToCount = false;
 if (weLikeToCount) {
 lineCount = 1;
 } else {
 lineCount = 0;
 }

 print(lineCount);
//操作符
 assert(2 + 3 == 5);
 assert(2 - 3 == -1);
 assert(2 * 3 == 6);
 assert(5 / 2 == 2.5); 
 assert(5 % 2 == 1); 
 assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

 int a;
 int b;

 a = 0;
 b = ++a; 
 assert(a == b); // 1 == 1

 a = 0;
 b = a++; 
 assert(a != b); // 1 != 0

 a = 0;
 b = --a; 
 assert(a == b); // -1 == -1

 a = 0;
 b = a--; 
 assert(a != b); // -1 != 0

 assert(2 == 2);
 assert(2 != 3);
 assert(3 > 2);
 assert(2 < 3);
 assert(3 >= 3);
 assert(2 <= 3);

 final value = 0x22;
 final bitmask = 0x0f;

 assert((value & bitmask) == 0x02); // AND
 assert((value & ~bitmask) == 0x20); // AND NOT
 assert((value | bitmask) == 0x2f); // OR
 assert((value ^ bitmask) == 0x2d); // XOR

assert((value << 4) == 0x220); // Shift left
 assert((value >> 4) == 0x02); // Shift right

 // Shift right example that results in different behavior on web
 // because the operand value changes when masked to 32 bits:
 assert((-value >> 4) == -0x03);

 assert((value >>> 4) == 0x02); // Unsigned shift right
 assert((-value >>> 4) > 0); // Unsigned shift right
}





