import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:smart_water/src/models/request/regis_model_req.dart';
import 'package:smart_water/src/models/request/response_api.dart';

const baseUrl = 'http://mdl2023.my.id/api/register';

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
      var result = ResponseApi(data: response);
      print(response.data);
      print(response.statusCode);
      return result;
    } catch (e) {
      print(e);
    }
  }
}
