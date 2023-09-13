import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'exception_handling.dart';

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

  Future post(String endpoint, List body) async {
    final url = uri(endpoint);
    // var client = http.Client();
    final response = await http.post(url,
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'}).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        throw TimeoutException('TimeOut try again');
      },
    );
  }

  Future get(String endpoint) async {
    try {
      final url = uri(endpoint);
      var client = http.Client();
      final response = await client.get(url).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException('API cannot be fetched');
        },
      );
      return returnResponse(response);
    } catch (e) {
      print(e);
      throw ExceptionHandlers().getException(e);
    }
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final body = jsonDecode(response.body);
        return body;
      case 404:
        throw 404;
      case 400:
        throw 400;
      default:
        throw "Default";
    }
  }
}
