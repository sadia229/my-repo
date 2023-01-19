// import 'package:hive/hive.dart';
//
// import '../constants/constants.dart';
//
// class LocalDb {
//   final Box? box;
//
//   LocalDb({this.box});
//
//   saveData(box) async {
//     box = await Hive.openBox('LoginData ');
//     getData();
//   }
//
//   getData() async {
//     if (box?.get('token') != null) {
//       authToken = box?.get('token');
//     }
//   }
// }
