// import 'package:dio/dio.dart';
// import 'package:web_parallax/models/tstats.dart';
// import 'package:web_parallax/services/connect_telegram.dart';

// class DioClient {
//   final Dio _dio = Dio(
//     BaseOptions(
//       baseUrl: 'https://api.tgstat.ru/channels/stat?',
//       connectTimeout: 5000,
//       receiveTimeout: 3000,
//     ),
//   );

//   Future<Tgstats> getUser({String id}) async {
//     Tgstats response;

//     try {
//       Response telegramData = await _dio
//           .get(ConnectApiTelegram.token + ConnectApiTelegram.tgstatsApi);

//       print('User Info: ${telegramData.data}');

//       response = Tgstats.fromJson(telegramData.data);
//     } on DioError catch (e) {
//       // The request was made and the server responded with a status code
//       // that falls out of the range of 2xx and is also not 304.
//       if (e.response != null) {
//         print('Dio error!');
//         print('STATUS: ${e.response?.statusCode}');
//         print('DATA: ${e.response?.data}');
//         print('HEADERS: ${e.response?.headers}');
//       } else {
//         // Error due to setting up or sending the request
//         print('Error sending request!');
//         print(e.message);
//       }
//     }

//     return response;
//   }
// }
