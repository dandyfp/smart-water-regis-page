// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ResponseApi {
  Response? data;
  ResponseApi({
    this.data,
  });

  factory ResponseApi.fromJson(Map<String, dynamic> json) => ResponseApi(data: json["data"]);

  Map<String, dynamic> toJson() => {'data': data};
}
