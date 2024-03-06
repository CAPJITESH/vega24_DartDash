import 'package:flutter/material.dart';

class HttpApi {
  //Main Url
  static const mainUrl = 'http://10.0.40.38:5000';

  //Api Header
  static const headers = {
    'Content-type': 'application/json',
  };


  //Noti Api
  static const notiApi = '$mainUrl/noti';
}
