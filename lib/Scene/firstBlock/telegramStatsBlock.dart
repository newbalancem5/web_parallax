// import 'package:flutter/material.dart';
// import 'package:flutterfordev/Style/abstract/_fontstyle.dart';
// import 'package:flutterfordev/domain/api_clients/api_cl.dart';

// class TeLegramStatsPage extends StatefulWidget {
//   @override
//   _TeLegramStatsPageState createState() => _TeLegramStatsPageState();
// }

// class _TeLegramStatsPageState extends State<TeLegramStatsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           child: FutureBuilder(
//             future: getRequest(),
//             builder: (BuildContext ctx, AsyncSnapshot snapshot) {
//               if (snapshot.data == null) {
//                 return Container(
//                   child: Center(
//                     child: CircularProgressIndicator(),
//                   ),
//                 );
//               } else {
//                 return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (ctx, index) => ListTile(
//                     title: Text(snapshot.data[index].title),
//                     subtitle: Text(snapshot.data[index].body),
//                     contentPadding: EdgeInsets.only(bottom: 20.0),
//                   ),
//                 );
//               }
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
