import 'dart:async';
import 'dart:io';

import 'package:http/http.dart';

class ExceptionHandlers {
  getException(e) {
    if (e is SocketException) {
      return 'No Internet Connection';
    } else if (e is HttpException) {
      return 'Http error Occured';
    } else if (e is FormatException) {
      return 'Invalid Data Format';
    } else if (e is ClientException) {
      return 'Check Your Internet Connection';
    } else if (e is TimeoutException) {
      return 'TimeOut. Try again';
    } else if (e == 404) {
      return "Bad Request. Try again";
    } else if (e == 404) {
      return "Something went wrong. Try again";
    } else if (e == "Default") {
      return 'Error occured while Communication with Server';
    }
    //  else if (e is InvalidInputException) {
    //   return e.message.toString();
    // }
  }
}
