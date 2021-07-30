import 'dart:convert';
import 'dart:io';

import 'package:flutterfordev/domain/entity/telegraminf.dart';

class ApiClient {
  final client = HttpClient();

  Future<List<Post>> getPosts() async {
    final url = Uri.parse(
        'https://api.tgstat.ru/channels/stat?token=f6ecaec9b56acf18ce0b8b96df86b714&channelId=@flutterdevru');

    final request = await client.getUrl(url);
    final response = await request.close();

    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final json = jsonDecode(jsonString) as List<dynamic>;
    final info = json
        .map((dynamic e) => Post.fromJson(e as Map<String, dynamic>))
        .toList();
    return info;
  }
}
