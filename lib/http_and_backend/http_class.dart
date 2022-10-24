import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CustomHttpRequest {
  CustomHttpRequest();
  final String host =
      'http://firstapproval-env.eba-mxemijwk.eu-west-1.elasticbeanstalk.com/';

  void listenHttp() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      List smth = [];
      var jsonResponse = convert.jsonDecode(response.body);
      for (var el in jsonResponse) {
        smth.add(el as Map<String, dynamic>);
      }
      print(smth[0]['title']);
    } else {
      print('Error code ${response.statusCode}');
    }
  }

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
