import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../util/apis.dart';

class LoginRepo {
  static Future<void> login({
    required String email,
    required String password,
    required Function(String successMessage) onSuccess,
    required Function(String message) onError,
  }) async {
    try {
      var headers = {
        "Accept": "application/json",
      };
      var body = {
        "email": email,
        "password": password,
        "type": "customer",
      };
      http.Response response = await http.post(Uri.parse(Api.loginUrl),
          headers: headers, body: body);

      log(json.encode(body));
      log(response.body);

      dynamic data = jsonDecode(response.body);
      if (data["status"] == "success") {
        onSuccess(data["message"]);
      } else {
        onError(data["message"]);
      }
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      onError("Sorry something went wrong");
    }
  }
}
