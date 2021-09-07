import 'package:http/http.dart' as http;

Future<String> getData() async {
  final Url = Uri.parse('https://www.xiag.ch/share/testtask/list.json');
  http.Response response = await http.get(Url);
  print(response);
  return getData();
}
