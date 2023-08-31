import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class API_Helper {
  static const String _baseUrl = 'https://odooformybusiness.com/';
  static Uri uri(String path) {
    return Uri.parse('$_baseUrl$path');
  }

  addheader() {
    return {
      'Content-Type': 'application/json',
    };
  }

  Future get(String endpoint) async {
    final url = uri(endpoint);
    var client = http.Client();
    final response = await client
        .get(
      url,
    )
        .timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        throw TimeoutException('API cannot be fetched');
      },
    );
    return returnResponse(response);
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final body = jsonDecode(response.body);
        return body;
      case 404:
        throw "Bad request try again";
      case 400:
        throw "Something went wrong try again";

      default:
        throw ('Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
