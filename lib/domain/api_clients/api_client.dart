// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:flutterfordev/domain/entity/telegraminf.dart';

// class ApiClient {
//   final client = HttpClient();
//   String key = '634693ccec46e47ec5c564940ea1ef64';

//   Future<List<Post>> getPosts() async {
//     final url = Uri.parse(
//         'https://api.tgstat.ru/channels/stat?token=$key&channelId=@flutterdevru');

//     final response = await client.getUrl(url);
//     // final response = await http.get(url);
//     print(response);

//     final jsonStrings = await response.toString();
//     final jsonString = jsonStrings.length;
//     final json = null;
//     final info = json
//         .map(
//           (dynamic e) => Post.fromJson(e as Map<String, dynamic>),
//         )
//         .toList();
//     return info;
//   }
// }
