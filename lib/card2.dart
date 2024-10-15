// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Card with ListTile'),
//         ),
//         body: Center(
//           child: InfoCard(
//             id: "123",
//             name: "John Doe",
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class InfoCard extends StatelessWidget {
//   final String id;
//   final String name;
//
//   const InfoCard({Key? key, required this.id, required this.name}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       elevation: 4,
//       child: ListTile(
//         contentPadding: EdgeInsets.all(16.0),
//         title: Text(
//           '$id: $name',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         leading: CircleAvatar(
//           child: Text("WTH"),
//         ),
//       ),
//     );
//   }
// }
