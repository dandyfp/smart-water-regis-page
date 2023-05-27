import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:smart_water/src/models/request/regis_model_req.dart';

const baseUrl = 'http://127.0.0.1:8000/api/register';

class AuthNetwork {
  Future register(RegisModelReq request) async {
    var body = RegisModelReq(
      rfId: request.rfId,
      nama: request.nama,
      jenisKelamin: request.jenisKelamin,
      telpon: request.telpon,
    );
    try {
      final dio = Dio();
      var response = await dio.post(baseUrl, data: jsonEncode(body));
      print(response.data);
      print(response.statusCode);
    } catch (e) {
      print(e);
    }
  }
}
