import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


///Архитектурный вопрос: сейчас в проекте почти нет сетевых запросов, но обычно,
///выбранный способ реализации считается самым неудачным решением
///
/// программа миниум: использовать Dio и freezed/json_serializable для dto
/// https://pub.dev/packages/dio
/// - интерсепторы на запрос, ответ, ошибку
/// - легче логгер подключить (банально "виднее" что происходит с запросом без всяких принтов)
///
/// пограмма максимум: добавить в связку retrofit
/// https://pub.dev/packages/retrofit
/// - Api like запросы - читаемо, масштабируемо
/// - кодогенерация сделает весь бойлерплейт
class CustomHttpRequest {
  CustomHttpRequest();
  final String host =
      'http://firstapproval-env.eba-mxemijwk.eu-west-1.elasticbeanstalk.com/';

  void listenHttp() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      ///работаем с dto - стараемся использовать четкую типизацию и методы fromJson
      List smth = [];
      var jsonResponse = convert.jsonDecode(response.body);
      for (var el in jsonResponse) {
        smth.add(el as Map<String, dynamic>);
      }
      ///от принтов избавляемся: испольщуем debugPrint или log
      print(smth[0]['title']);
    } else {
      print('Error code ${response.statusCode}');
    }
  }

  /// List<dynamic>? - явно нужно доработать парсинг ответа, чтобы привести к конкретному типу dto
  Future<List<dynamic>?> getUserById() async {
    const String host =
        'firstapproval-env.eba-mxemijwk.eu-west-1.elasticbeanstalk.com';
    var url = Uri.http(host, '/users/1/experiments');
    var response = await http.get(url);
    print('http request done');
    if (response.statusCode == 200) {
      // List answer = [];
      var jsonResponse = convert.jsonDecode(response.body);
      // answer.add(response.body);
      return jsonResponse;
      // return answer[0];
    } else {
      return [0];
      // return List.from([response.statusCode]);
    }
  }
}

/// это что-то очень странное:
/// 1) удалить мертвый код
/// 2) для dto использовать freezed или json_serializable
/// 3) вынести в отдельный файл
class PostAndGet {
  final String _name;
  final String _description;
  final String _date;
  final String _method;
  final String _object;
  final String _device;
  final String _soft;

  PostAndGet(this._name, this._description, this._date, this._method,
      this._object, this._device, this._soft);
}
