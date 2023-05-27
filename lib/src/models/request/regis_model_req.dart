import 'dart:convert';

RegisModelReq regisModelReqFromJson(String str) => RegisModelReq.fromJson(json.decode(str));

String regisModelReqToJson(RegisModelReq data) => json.encode(data.toJson());

class RegisModelReq {
  String rfId;
  String nama;
  String jenisKelamin;
  String telpon;

  RegisModelReq({
    required this.rfId,
    required this.nama,
    required this.jenisKelamin,
    required this.telpon,
  });

  factory RegisModelReq.fromJson(Map<String, dynamic> json) => RegisModelReq(
        rfId: json["rf_id"],
        nama: json["nama"],
        jenisKelamin: json["jenis_kelamin"],
        telpon: json["telpon"],
      );

  Map<String, dynamic> toJson() => {
        "rf_id": rfId,
        "nama": nama,
        "jenis_kelamin": jenisKelamin,
        "telpon": telpon,
      };
}
