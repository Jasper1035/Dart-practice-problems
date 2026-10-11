// import 'package:robot_simulator/orientation.dart';
// import 'package:robot_simulator/position.dart';

// export 'package:robot_simulator/orientation.dart';
// export 'package:robot_simulator/position.dart';

// class Robot {
//   Position position;
//   Orientation orientation;

//   Robot(this.position, this.orientation);

//   void move(String instructions) {
//     for (int i = 0; i < instructions.length; i++) {
//       switch (instructions[i]) {
//         case 'R':
//           _turnRight();
//           break;
//         case 'L':
//           _turnLeft();
//           break;
//         case 'A':
//           _advance();
//           break;
//         default:
//           throw ArgumentError('Invalid instruction: ${instructions[i]}');
//       }
//     }
//   }

//   void _turnRight() {
//     orientation = switch (orientation) {
//       Orientation.north => Orientation.east,
//       Orientation.east => Orientation.south,
//       Orientation.south => Orientation.west,
//       Orientation.west => Orientation.north,
//     };
//   }

//   void _turnLeft() {
//     orientation = switch (orientation) {
//       Orientation.north => Orientation.west,
//       Orientation.west => Orientation.south,
//       Orientation.south => Orientation.east,
//       Orientation.east => Orientation.north,
//     };
//   }

//   void _advance() {
//     int x = position.x;
//     int y = position.y;

//     switch (orientation) {
//       case Orientation.north:
//         y += 1;
//         break;
//       case Orientation.east:
//         x += 1;
//         break;
//       case Orientation.south:
//         y -= 1;
//         break;
//       case Orientation.west:
//         x -= 1;
//         break;
//     }

//     position = Position(x, y);
//   }
// }
